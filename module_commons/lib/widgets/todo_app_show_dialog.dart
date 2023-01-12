import 'package:flutter/material.dart';
import 'package:module_commons/commons.dart';

abstract class TodoAppDialog {
  static Future<void> show({
    required BuildContext context,
    required String title,
    String? subTitle,
    Widget? content,
    Color backgroundColor = TodoAppColors.monoWhite,
    required String firstButtonText,
    required Function() firstButtonOnTap,
    Function()? secondButtonOnTap,
    String? secondButtonText,
  }) {
    return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(TodoAppDimens.xxxmacro)),
              alignment: Alignment.center,
              insetPadding: const EdgeInsets.symmetric(horizontal: TodoAppDimens.md),
              backgroundColor: backgroundColor,
              title: Text(title, textAlign: TextAlign.center),
              titleTextStyle: const Text('').h4Bold(color: TodoAppColors.monoBlack).style,
              titlePadding: const EdgeInsets.only(
                  top: TodoAppDimens.xs, bottom: TodoAppDimens.xxs, right: TodoAppDimens.xxs, left: TodoAppDimens.xxs),
              contentPadding: const EdgeInsets.symmetric(horizontal: TodoAppDimens.xxs),
              content: content ?? Text(subTitle ?? "", textAlign: TextAlign.center),
              contentTextStyle: const Text('').bodyMediumRegular(color: TodoAppColors.monoBlack).style,
              actionsPadding: const EdgeInsets.all(TodoAppDimens.xxs),
              actions: [
                GestureDetector(
                    onTap: firstButtonOnTap,
                    child: Container(
                        height: TodoAppDimens.lg,
                        margin: const EdgeInsets.all(TodoAppDimens.xxs),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(TodoAppRadius.xxsLarge))),
                        child: Text(firstButtonText).labelMediumBold())),
                if (secondButtonOnTap != null)
                  GestureDetector(
                      onTap: secondButtonOnTap,
                      child: SizedBox(height: TodoAppDimens.lg, child: Text(firstButtonText).labelMediumBold()))
              ]);
        });
  }
}
