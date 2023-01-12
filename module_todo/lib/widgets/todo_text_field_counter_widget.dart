import 'package:flutter/material.dart';
import 'package:module_commons/commons.dart';

class TodoTextFieldCounterWidget extends StatelessWidget {
  final int controllerLength;
  final int maxLength;

  const TodoTextFieldCounterWidget({
    required this.maxLength,
    required this.controllerLength,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(style: const Text("").labelSmallRegular(color: TodoAppColors.monoBlack).style, children: [
      TextSpan(
          text: controllerLength.toString(),
          style: const Text("").labelSmallRegular(color: TodoAppColors.darkSecondary).style),
      const TextSpan(text: "/${100}")
    ]));
  }
}
