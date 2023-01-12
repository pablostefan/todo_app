import 'package:flutter/material.dart';
import 'package:module_assets/assets.dart';
import 'package:module_commons/commons.dart';
import 'package:module_external_dependencies/flutter_svg.dart';

class TodoAppDismissibleBackGroundWidget extends StatelessWidget {
  final double height;

  const TodoAppDismissibleBackGroundWidget({required this.height, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.symmetric(horizontal: TodoAppDimens.xxxs),
        decoration: const BoxDecoration(
            color: TodoAppColors.red, borderRadius: BorderRadius.all(Radius.circular(TodoAppDimens.pico))),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SvgPicture.asset(TodoImageVector.ic_trash_can.svg,
              package: TodoImageVector.ic_trash_can.package,
              color: TodoAppColors.monoWhite,
              width: TodoAppDimens.xxs,
              height: TodoAppDimens.xxs),
          SvgPicture.asset(TodoImageVector.ic_trash_can.svg,
              package: TodoImageVector.ic_trash_can.package,
              color: TodoAppColors.monoWhite,
              width: TodoAppDimens.xxs,
              height: TodoAppDimens.xxs),
        ]));
  }
}
