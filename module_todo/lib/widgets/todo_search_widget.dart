import 'package:flutter/material.dart';
import 'package:module_commons/commons.dart';

class TodoSearchWidget extends StatelessWidget {
  final TextEditingController controller;

  const TodoSearchWidget({required this.controller, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: TodoAppDimens.micro),
        decoration: BoxDecoration(
            color: TodoAppColors.monoWhite,
            borderRadius: BorderRadius.circular(TodoAppRadius.xLarge),
            boxShadow: [
              BoxShadow(
                  color: TodoAppColors.darkSecondary.withOpacity(TodoAppOpacity.half),
                  blurRadius: TodoAppDimens.atto,
                  spreadRadius: TodoAppDimens.atto,
                  offset: const Offset(TodoAppDimens.atto, TodoAppDimens.atto))
            ]),
        child: TextField(
            controller: controller,
            cursorColor: TodoAppColors.monoBlack,
            style: const Text("").bodyLargeSemiBold(color: TodoAppColors.monoBlack).style,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(TodoAppDimens.none),
                prefixIcon: const Icon(Icons.search, color: TodoAppColors.monoBlack, size: TodoAppDimens.xxs),
                prefixIconConstraints:
                    const BoxConstraints(maxHeight: TodoAppDimens.xxxmacro, minWidth: TodoAppDimens.xxs),
                border: InputBorder.none,
                hintText: 'Search',
                hintStyle: const Text("").bodyLargeSemiBold(color: TodoAppColors.todoGrey).style)));
  }
}
