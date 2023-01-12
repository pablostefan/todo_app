import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:module_assets/assets.dart';
import 'package:module_commons/commons.dart';
import 'package:module_external_dependencies/flutter_modular.dart';
import 'package:module_external_dependencies/flutter_svg.dart';
import 'package:module_todo/i18n/translate.dart';

class TodoAddTodoPageAppBarWidget extends AppBar {
  TodoAddTodoPageAppBarWidget({super.key})
      : super(
            leading: GestureDetector(
                onTap: () {
                  HapticFeedback.lightImpact();
                  Modular.to.pop();
                },
                child: Padding(
                    padding: const EdgeInsets.only(left: TodoAppDimens.xxs),
                    child: SvgPicture.asset(TodoImageVector.ic_arrow_left.svg,
                        package: TodoImageVector.ic_arrow_left.package, color: TodoAppColors.monoBlack))),
            titleSpacing: TodoAppDimens.xxxmacro,
            centerTitle: true,
            backgroundColor: TodoAppColors.todoBackGround,
            elevation: TodoAppDimens.xatto,
            title: Text(TranslateTodo.strings.addTaskTodo).labelLargeSemiBold(color: TodoAppColors.monoBlack),
            actions: [
              Padding(
                  padding: const EdgeInsets.only(right: TodoAppDimens.xxs),
                  child: SvgPicture.asset(TodoImageVector.ic_calendar.svg,
                      package: TodoImageVector.ic_calendar.package,
                      color: TodoAppColors.monoBlack,
                      width: TodoAppDimens.xxs,
                      height: TodoAppDimens.xxs))
            ]);
}
