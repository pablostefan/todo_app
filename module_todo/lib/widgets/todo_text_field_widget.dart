import 'package:flutter/material.dart';
import 'package:module_commons/commons.dart';
import 'package:module_todo/widgets/todo_text_field_counter_widget.dart';

class TodoTextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final int maxLength;

  const TodoTextFieldWidget({required this.controller, this.maxLength = 100, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        cursorColor: TodoAppColors.monoBlack,
        controller: controller,
        style: const Text("").labelMediumRegular(color: TodoAppColors.monoBlack).style,
        decoration: InputDecoration(
            filled: true,
            fillColor: TodoAppColors.monoWhite,
            counter: TodoTextFieldCounterWidget(maxLength: maxLength, controllerLength: controller.text.length),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(TodoAppRadius.xLarge),
                borderSide: const BorderSide(color: TodoAppColors.transparent)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(TodoAppRadius.xLarge),
                borderSide: const BorderSide(color: TodoAppColors.transparent)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(TodoAppRadius.xLarge),
                borderSide: const BorderSide(color: TodoAppColors.transparent))));
  }
}
