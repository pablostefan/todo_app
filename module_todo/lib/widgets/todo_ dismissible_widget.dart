import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:module_commons/commons.dart';
import 'package:module_external_dependencies/flutter_modular.dart';
import 'package:module_todo/i18n/translate.dart';

const Curve _kResizeTimeCurve = Interval(0.4, 1.0, curve: Curves.ease);
const double _kMinFlingVelocity = 700.0;
const double _kMinFlingVelocityDelta = 400.0;
const double _kFlingVelocityScale = 1.0 / 300.0;
const double _kDismissThreshold = 0.4;

typedef DismissDirectionCallback = void Function(DismissDirection direction);

typedef DismissUpdateCallback = void Function(DismissUpdateDetails details);

class TodoDismissibleWidget extends StatefulWidget {
  const TodoDismissibleWidget({
    required Key key,
    required this.child,
    this.padding = const EdgeInsets.only(bottom: TodoAppDimens.xxxs),
    this.scrollController,
    this.background,
    this.secondaryBackground,
    this.onResize,
    this.onUpdate,
    this.onDismissed,
    this.hasConfirmDelete = false,
    this.confirmDeleteTitle,
    this.direction = DismissDirection.horizontal,
    this.resizeDuration = const Duration(milliseconds: 300),
    this.dismissThresholds = const <DismissDirection, double>{},
    this.movementDuration = const Duration(milliseconds: 200),
    this.crossAxisEndOffset = 0.0,
    this.dragStartBehavior = DragStartBehavior.start,
    this.behavior = HitTestBehavior.opaque,
  })  : assert(secondaryBackground == null || background != null),
        super(key: key);

  final String? confirmDeleteTitle;

  final EdgeInsetsGeometry padding;

  final bool hasConfirmDelete;

  final ScrollController? scrollController;

  final Widget child;

  final Widget? background;

  final Widget? secondaryBackground;

  final VoidCallback? onResize;

  final DismissDirectionCallback? onDismissed;

  final DismissDirection direction;

  final Duration? resizeDuration;

  final Map<DismissDirection, double> dismissThresholds;

  final Duration movementDuration;

  final double crossAxisEndOffset;

  final DragStartBehavior dragStartBehavior;

  final HitTestBehavior behavior;

  final DismissUpdateCallback? onUpdate;

  @override
  State<TodoDismissibleWidget> createState() => _TodoDismissibleWidgetState();
}

class DismissUpdateDetails {
  DismissUpdateDetails(
      {this.direction = DismissDirection.horizontal, this.reached = false, this.previousReached = false});

  final DismissDirection direction;

  final bool reached;

  final bool previousReached;
}

enum _FlingGestureKind { none, forward, reverse }

class _TodoDismissibleWidgetState extends State<TodoDismissibleWidget>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
    _moveController = AnimationController(duration: widget.movementDuration, vsync: this)
      ..addStatusListener(_handleDismissStatusChanged)
      ..addListener(_handleDismissUpdateValueChanged);
    _updateMoveAnimation();
  }

  @override
  void dispose() {
    _moveController!.dispose();
    _resizeController?.dispose();
    super.dispose();
  }

  AnimationController? _moveController;
  late Animation<Offset> _moveAnimation;
  AnimationController? _resizeController;
  Animation<double>? _resizeAnimation;

  double _dragExtent = 0.0;
  final bool _confirming = false;
  bool _dragUnderway = false;
  Size? _sizePriorToCollapse;
  bool _dismissThresholdReached = false;

  @override
  bool get wantKeepAlive => _moveController?.isAnimating == true || _resizeController?.isAnimating == true;

  bool get _directionIsXAxis {
    return widget.direction == DismissDirection.horizontal ||
        widget.direction == DismissDirection.endToStart ||
        widget.direction == DismissDirection.startToEnd;
  }

  DismissDirection _extentToDirection(double extent) {
    if (extent == 0.0) return DismissDirection.none;
    if (_directionIsXAxis) {
      switch (Directionality.of(context)) {
        case TextDirection.rtl:
          return extent < 0 ? DismissDirection.startToEnd : DismissDirection.endToStart;
        case TextDirection.ltr:
          return extent > 0 ? DismissDirection.startToEnd : DismissDirection.endToStart;
      }
    }
    return extent > 0 ? DismissDirection.down : DismissDirection.up;
  }

  DismissDirection get _dismissDirection => _extentToDirection(_dragExtent);

  bool get _isActive {
    return _dragUnderway || _moveController!.isAnimating;
  }

  double get _overallDragAxisExtent {
    final Size size = context.size!;
    return _directionIsXAxis ? size.width : size.height;
  }

  void _handleDragStart(DragStartDetails details) {
    if (_confirming) return;
    _dragUnderway = true;
    if (_moveController!.isAnimating) {
      _dragExtent = _moveController!.value * _overallDragAxisExtent * _dragExtent.sign;
      _moveController!.stop();
    } else {
      _dragExtent = 0.0;
      _moveController!.value = 0.0;
    }
    setState(() => _updateMoveAnimation());
  }

  void _handleDragUpdate(DragUpdateDetails details) {
    if (!_isActive || _moveController!.isAnimating) return;

    final double delta = details.primaryDelta!;
    final double oldDragExtent = _dragExtent;
    switch (widget.direction) {
      case DismissDirection.horizontal:
      case DismissDirection.vertical:
        _dragExtent += delta;
        break;

      case DismissDirection.up:
        if (_dragExtent + delta < 0) _dragExtent += delta;
        break;

      case DismissDirection.down:
        if (_dragExtent + delta > 0) _dragExtent += delta;
        break;

      case DismissDirection.endToStart:
        switch (Directionality.of(context)) {
          case TextDirection.rtl:
            if (_dragExtent + delta > 0) _dragExtent += delta;
            break;
          case TextDirection.ltr:
            if (_dragExtent + delta < 0) _dragExtent += delta;
            break;
        }
        break;

      case DismissDirection.startToEnd:
        switch (Directionality.of(context)) {
          case TextDirection.rtl:
            if (_dragExtent + delta < 0) _dragExtent += delta;
            break;
          case TextDirection.ltr:
            if (_dragExtent + delta > 0) _dragExtent += delta;
            break;
        }
        break;

      case DismissDirection.none:
        _dragExtent = 0;
        break;
    }
    if (oldDragExtent.sign != _dragExtent.sign) setState(() => _updateMoveAnimation());

    if (!_moveController!.isAnimating) _moveController!.value = _dragExtent.abs() / _overallDragAxisExtent;
  }

  void _handleDismissUpdateValueChanged() {
    if (widget.onUpdate != null) {
      final bool oldDismissThresholdReached = _dismissThresholdReached;
      _dismissThresholdReached =
          _moveController!.value > (widget.dismissThresholds[_dismissDirection] ?? _kDismissThreshold);
      final DismissUpdateDetails details = DismissUpdateDetails(
          direction: _dismissDirection, reached: _dismissThresholdReached, previousReached: oldDismissThresholdReached);
      widget.onUpdate!(details);
    }
  }

  void _updateMoveAnimation() {
    final double end = _dragExtent.sign;
    _moveAnimation = _moveController!.drive(Tween<Offset>(
        begin: Offset.zero,
        end: _directionIsXAxis ? Offset(end, widget.crossAxisEndOffset) : Offset(widget.crossAxisEndOffset, end)));
  }

  _FlingGestureKind _describeFlingGesture(Velocity velocity) {
    if (_dragExtent == 0.0) return _FlingGestureKind.none;

    final double vx = velocity.pixelsPerSecond.dx;
    final double vy = velocity.pixelsPerSecond.dy;
    DismissDirection flingDirection;
    if (_directionIsXAxis) {
      if (vx.abs() - vy.abs() < _kMinFlingVelocityDelta || vx.abs() < _kMinFlingVelocity) return _FlingGestureKind.none;
      assert(vx != 0.0);
      flingDirection = _extentToDirection(vx);
    } else {
      if (vy.abs() - vx.abs() < _kMinFlingVelocityDelta || vy.abs() < _kMinFlingVelocity) return _FlingGestureKind.none;
      assert(vy != 0.0);
      flingDirection = _extentToDirection(vy);
    }
    if (flingDirection == _dismissDirection) return _FlingGestureKind.forward;
    return _FlingGestureKind.reverse;
  }

  void _handleDragEnd(DragEndDetails details) {
    if (!_isActive || _moveController!.isAnimating) return;
    _dragUnderway = false;
    if (_moveController!.isCompleted) {
      _handleMoveCompleted();
      return;
    }
    final double flingVelocity =
        _directionIsXAxis ? details.velocity.pixelsPerSecond.dx : details.velocity.pixelsPerSecond.dy;
    switch (_describeFlingGesture(details.velocity)) {
      case _FlingGestureKind.forward:
        assert(_dragExtent != 0.0);
        assert(!_moveController!.isDismissed);
        if ((widget.dismissThresholds[_dismissDirection] ?? _kDismissThreshold) >= 1.0) {
          _moveController!.reverse();
          break;
        }
        _dragExtent = flingVelocity.sign;
        _moveController!.fling(velocity: flingVelocity.abs() * _kFlingVelocityScale);
        break;
      case _FlingGestureKind.reverse:
        assert(_dragExtent != 0.0);
        assert(!_moveController!.isDismissed);
        _dragExtent = flingVelocity.sign;
        _moveController!.fling(velocity: -flingVelocity.abs() * _kFlingVelocityScale);
        break;
      case _FlingGestureKind.none:
        if (!_moveController!.isDismissed) {
          // we already know it's not completed, we check that above
          if (_moveController!.value > (widget.dismissThresholds[_dismissDirection] ?? _kDismissThreshold)) {
            _moveController!.forward();
          } else {
            _moveController!.reverse();
          }
        }
        break;
    }
  }

  Future<void> _handleDismissStatusChanged(AnimationStatus status) async {
    if (status == AnimationStatus.completed && !_dragUnderway) await _handleMoveCompleted();

    if (mounted) updateKeepAlive();
  }

  Future<void> _handleMoveCompleted() async {
    if ((widget.dismissThresholds[_dismissDirection] ?? _kDismissThreshold) >= 1.0) {
      _moveController!.reverse();
      return;
    }
    final bool result = await _confirmStartResizeAnimation();
    if (mounted) result ? _startResizeAnimation() : _moveController!.reverse();
  }

  Future<bool> _confirmStartResizeAnimation() async {
    if (widget.hasConfirmDelete) return await _confirmDeleteDialog();
    return true;
  }

  Future<bool> _confirmDeleteDialog() async {
    var delete = false;

    await TodoAppDialog.show(
        context: context,
        title: TranslateTodo.strings.warnings,
        subTitle: widget.confirmDeleteTitle ?? TranslateTodo.strings.wantDelete,
        firstButtonText: TranslateTodo.strings.confirm,
        firstButtonOnTap: () {
          Modular.to.pop();
          delete = true;
        },
        secondButtonText: TranslateTodo.strings.cancel,
        secondButtonOnTap: Modular.to.pop);

    return delete;
  }

  void _startResizeAnimation() {
    assert(_moveController!.isCompleted);
    assert(_resizeController == null);
    assert(_sizePriorToCollapse == null);
    if (widget.resizeDuration == null) {
      if (widget.onDismissed != null) {
        final DismissDirection direction = _dismissDirection;
        widget.onDismissed!(direction);
      }
    } else {
      _resizeController = AnimationController(duration: widget.resizeDuration, vsync: this)
        ..addListener(_handleResizeProgressChanged)
        ..addStatusListener((AnimationStatus status) => updateKeepAlive());
      _resizeController!.forward();
      setState(() {
        _sizePriorToCollapse = context.size;
        _resizeAnimation =
            _resizeController!.drive(CurveTween(curve: _kResizeTimeCurve)).drive(Tween<double>(begin: 1.0, end: 0.0));
      });
    }
  }

  void _handleResizeProgressChanged() {
    if (_resizeController!.isCompleted) {
      widget.onDismissed?.call(_dismissDirection);
    } else {
      widget.onResize?.call();
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context); // See AutomaticKeepAliveClientMixin.

    assert(!_directionIsXAxis || debugCheckHasDirectionality(context));

    Widget? background = widget.background;
    if (widget.secondaryBackground != null) {
      final DismissDirection direction = _dismissDirection;
      if (direction == DismissDirection.endToStart || direction == DismissDirection.up) {
        background = widget.secondaryBackground;
      }
    }

    if (_resizeAnimation != null) {
      // we've been dragged aside, and are now resizing.
      assert(() {
        if (_resizeAnimation!.status != AnimationStatus.forward) {
          assert(_resizeAnimation!.status == AnimationStatus.completed);
          throw FlutterError.fromParts(<DiagnosticsNode>[
            ErrorSummary('A dismissed Dismissible widget is still part of the tree.'),
            ErrorHint('Make sure to implement the onDismissed handler and to immediately remove the Dismissible '
                'widget from the application once that handler has fired.')
          ]);
        }
        return true;
      }());

      return SizeTransition(
          sizeFactor: _resizeAnimation!,
          axis: _directionIsXAxis ? Axis.vertical : Axis.horizontal,
          child: SizedBox(width: _sizePriorToCollapse!.width, height: _sizePriorToCollapse!.height, child: background));
    }
    Widget content = SingleChildScrollView(
        controller: widget.scrollController,
        scrollDirection: Axis.horizontal,
        child: SlideTransition(
            position: _moveAnimation, child: Container(color: TodoAppColors.todoBackGround, child: widget.child)));

    if (background != null) {
      content = Stack(children: <Widget>[Positioned.fill(child: background), content]);
    }

    if (widget.direction == DismissDirection.none) return content;

    return Padding(
        padding: widget.padding,
        child: GestureDetector(
            onHorizontalDragStart: _directionIsXAxis ? _handleDragStart : null,
            onHorizontalDragUpdate: _directionIsXAxis ? _handleDragUpdate : null,
            onHorizontalDragEnd: _directionIsXAxis ? _handleDragEnd : null,
            onVerticalDragStart: _directionIsXAxis ? null : _handleDragStart,
            onVerticalDragUpdate: _directionIsXAxis ? null : _handleDragUpdate,
            onVerticalDragEnd: _directionIsXAxis ? null : _handleDragEnd,
            behavior: widget.behavior,
            dragStartBehavior: widget.dragStartBehavior,
            child: content));
  }
}
