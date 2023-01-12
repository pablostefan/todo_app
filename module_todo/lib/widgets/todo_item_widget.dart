import 'package:flutter/material.dart';
import 'package:module_commons/commons.dart';
import 'package:module_core/database/models/todo_model.dart';

class TodoItemWidget extends StatelessWidget {
  final TodoModel todoModel;
  final double height;
  final Function(TodoModel todoModel) changeDoneTodo;

  const TodoItemWidget({
    required this.todoModel,
    required this.changeDoneTodo,
    required this.height,
    Key? key,
  }) : super(key: key);

  Color get _colorBarLateral {
    return todoModel.done ? TodoAppColors.highlightsYellow : TodoAppColors.darkPrimary.withOpacity(TodoAppOpacity.half);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        padding: const EdgeInsets.only(left: TodoAppDimens.xxfemto),
        decoration: BoxDecoration(
            color: _colorBarLateral, borderRadius: const BorderRadius.all(Radius.circular(TodoAppDimens.pico))),
        child: DecoratedBox(
            decoration: const BoxDecoration(
                color: TodoAppColors.monoWhite, borderRadius: BorderRadius.all(Radius.circular(TodoAppDimens.pico))),
            child: Row(children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width - 44,
                  child: CheckboxListTile(
                      value: todoModel.done,
                      checkColor: TodoAppColors.monoBlack,
                      activeColor: TodoAppColors.highlightsYellow,
                      onChanged: (_) => changeDoneTodo(todoModel),
                      side: const BorderSide(color: TodoAppColors.monoBlack, width: TodoAppDimens.xatto),
                      title: Text(todoModel.name).labelMediumBold(color: TodoAppColors.monoBlack)))
            ])));
  }
}
