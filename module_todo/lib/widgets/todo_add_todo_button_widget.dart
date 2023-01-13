import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:module_commons/commons.dart';
import 'package:module_todo/i18n/translate.dart';

class TodoAddTodoButtonWidget extends StatelessWidget {
  final bool taskTitleIsNotEmpty;
  final Function() addTodo;

  const TodoAddTodoButtonWidget({required this.taskTitleIsNotEmpty, required this.addTodo, Key? key}) : super(key: key);

  Color get _buttonColor {
    return taskTitleIsNotEmpty
        ? TodoAppColors.highlightsYellow
        : TodoAppColors.darkSecondary.withOpacity(TodoAppOpacity.dotZeroSeventy);
  }

  void _addTodo() {
    if (taskTitleIsNotEmpty) addTodo.call();
    HapticFeedback.lightImpact();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: _addTodo,
        child: Container(
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
                      blurRadius: TodoAppDimens.xatto,
                      spreadRadius: TodoAppDimens.xatto,
                      offset: const Offset(TodoAppDimens.xatto, TodoAppDimens.xatto))
                ]),
            child: Text(TranslateTodo.strings.add).labelMediumBold(color: TodoAppColors.monoBlack)));
  }
}
