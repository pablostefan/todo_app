import 'package:flutter/material.dart';
import 'package:module_assets/assets.dart';
import 'package:module_commons/commons.dart';
import 'package:module_external_dependencies/flutter_svg.dart';

class TodoDismissibleBackGroundWidget extends StatelessWidget {
  const TodoDismissibleBackGroundWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerRight,
        decoration: const BoxDecoration(
            color: TodoAppColors.red,
            border: Border(bottom: BorderSide(color: TodoAppColors.darkPrimary, width: TodoAppDimens.xxxs))),
        padding: const EdgeInsets.symmetric(horizontal: TodoAppDimens.xxs),
        child: SvgPicture.asset(TodoImageVector.ic_trash_can.svg,
            package: TodoImageVector.ic_trash_can.package,
            color: TodoAppColors.monoWhite,
            width: TodoAppDimens.xxs,
            height: TodoAppDimens.xxs));
  }
}
