import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:module_assets/assets.dart';
import 'package:module_commons/commons.dart';
import 'package:module_external_dependencies/flutter_svg.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;

  const FloatingActionButtonWidget({required this.onPressed, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        hoverColor: TodoAppColors.darkPrimary.withOpacity(TodoAppOpacity.half),
        onPressed: () {
          HapticFeedback.lightImpact();
          onPressed.call();
        },
        backgroundColor: TodoAppColors.highlightsYellow,
        child: SvgPicture.asset(TodoImageVector.ic_plus.svg,
            package: TodoImageVector.ic_plus.package,
            color: TodoAppColors.monoBlack,
            width: TodoAppDimens.xs,
            height: TodoAppDimens.xs));
  }
}
