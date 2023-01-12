import 'package:flutter/material.dart';
import 'package:module_commons/models/todo_app_statex.dart';

class TodoAppStateXWidget<T extends TodoAppStateX, StateXType> extends StatelessWidget {
  final T state;
  final Widget Function(StateXType) builder;
  final Widget Function(StateXType)? onClose;
  final Widget Function(StateXType)? onError;
  final Widget Function(StateXType)? onLoading;

  const TodoAppStateXWidget({
    required this.state,
    required this.builder,
    this.onError,
    this.onClose,
    this.onLoading,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(initialData: state.state, stream: state.stream, builder: _builder);
  }

  Widget _builder(BuildContext context, AsyncSnapshot snapshot) {
    if (snapshot.hasError) return _onError(snapshot);
    if (snapshot.hasData) return _hasData(snapshot);
    return const SizedBox.shrink();
  }

  Widget _onError(AsyncSnapshot snapshot) => onError?.call(snapshot.error as StateXType) ?? const SizedBox.shrink();

  Widget _hasData(AsyncSnapshot snapshot) {
    switch (snapshot.connectionState) {
      case ConnectionState.none:
        return onLoading?.call(snapshot.data as StateXType) ?? builder(snapshot.data as StateXType);
      case ConnectionState.waiting:
      case ConnectionState.active:
        return builder(snapshot.data as StateXType);
      case ConnectionState.done:
        return onClose?.call(snapshot.data as StateXType) ?? const SizedBox.shrink();
    }
  }
}
