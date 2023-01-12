import 'dart:io';

import 'package:module_todo/i18n/strings/en_us.dart';
import 'package:module_todo/i18n/strings/pt_br.dart';

abstract class TranslateTodo {
  static TodoStrings strings = _getType();

  static T _getType<T extends TodoStrings>() {
    String locale = Platform.localeName;
    const String ptBR = "pt_BR";

    if (locale == ptBR) return TodoPtBR() as T;
    return TodoEnUS() as T;
  }
}

abstract class TodoStrings {
  String get allTodos;

  String get warnings;

  String get wantDelete;

  String get confirm;

  String get cancel;

  String get addTaskTodo;

  String get taskTitle;

  String get add;
}
