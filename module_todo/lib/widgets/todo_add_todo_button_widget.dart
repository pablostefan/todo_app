import 'package:flutter/material.dart';
import 'package:module_commons/commons.dart';
import 'package:module_todo/i18n/translate.dart';

class TodoAddTodoButtonWidget extends StatelessWidget {
  final bool taskTitleIsNotEmpty;

  const TodoAddTodoButtonWidget({required this.taskTitleIsNotEmpty, Key? key}) : super(key: key);

  Color get _buttonColor {
    return taskTitleIsNotEmpty
        ? TodoAppColors.highlightsYellow
        : TodoAppColors.darkSecondary.withOpacity(TodoAppOpacity.dotZeroSeventy);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: TodoAppDimens.md,
        margin: const EdgeInsets.only(
            right: TodoAppDimens.xxxmacro, left: TodoAppDimens.xxxmacro, bottom: TodoAppDimens.xllg),
        decoration: BoxDecoration(
            color: _buttonColor,
            borderRadius: const BorderRadius.all(Radius.circular(TodoAppDimens.pico)),
            boxShadow: [
              BoxShadow(
                  color: TodoAppColors.darkSecondary.withOpacity(TodoAppOpacity.half),
                  blurRadius: TodoAppDimens.atto,
                  spreadRadius: TodoAppDimens.atto,
                  offset: const Offset(TodoAppDimens.atto, TodoAppDimens.atto))
            ]),
        child: Text(TranslateTodo.strings.add).labelMediumBold(color: TodoAppColors.monoBlack));
  }
}
