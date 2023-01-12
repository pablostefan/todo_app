import 'package:flutter/material.dart';
import 'package:module_commons/commons.dart';

class TodoHomePageAppBarWidget extends AppBar {
  TodoHomePageAppBarWidget({super.key})
      : super(
            titleSpacing: TodoAppDimens.xxxmacro,
            automaticallyImplyLeading: false,
            backgroundColor: TodoAppColors.todoBackGround,
            elevation: TodoAppDimens.none,
            title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [
              Icon(Icons.menu, color: TodoAppColors.darkPrimary, size: TodoAppDimens.xxxss),
              ClipOval(child: Icon(Icons.person, color: TodoAppColors.darkPrimary, size: TodoAppDimens.xxxss))
            ]));
}
