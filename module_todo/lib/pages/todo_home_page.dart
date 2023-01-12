import 'package:flutter/material.dart';
import 'package:module_commons/commons.dart';
import 'package:module_external_dependencies/flutter_modular.dart';
import 'package:module_todo/i18n/translate.dart';
import 'package:module_todo/stores/todo_home_store.dart';
import 'package:module_todo/view_models/todo_home_view_model.dart';
import 'package:module_todo/widgets/todo_floating_action_button_widget.dart';
import 'package:module_todo/widgets/todo_homer_page_app_bar_widget.dart';
import 'package:module_todo/widgets/todo_list_widget.dart';
import 'package:module_todo/widgets/todo_search_widget.dart';

class TodoHomePage extends StatefulWidget {
  const TodoHomePage({Key? key}) : super(key: key);

  @override
  State<TodoHomePage> createState() => _TodoHomePageState();
}

class _TodoHomePageState extends State<TodoHomePage> {
  final TodoHomeStore _store = Modular.get<TodoHomeStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TodoHomePageAppBarWidget(),
        floatingActionButton: FloatingActionButtonWidget(onPressed: _store.openAddTodoPage),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: TodoAppDimens.xxxmacro),
            child: TodoAppStateXWidget<TodoHomeStore, TodoHomeViewModel>(
                state: _store,
                builder: (state) => Column(children: [
                      TodoSearchWidget(controller: state.searchController),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                              padding: const EdgeInsets.only(top: TodoAppDimens.xmacro),
                              child: Text(TranslateTodo.strings.allTodos).h2Bold(color: TodoAppColors.monoBlack))),
                      TodoListWidget(
                          todos: state.todos,
                          delete: _store.deleteTodo,
                          horizontalScrollController: state.scrollHorizontalController,
                          changeDoneTodo: _store.changeDoneTodo),
                    ]))));
  }
}
