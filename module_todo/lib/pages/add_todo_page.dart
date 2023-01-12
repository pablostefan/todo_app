import 'package:flutter/material.dart';
import 'package:module_commons/commons.dart';
import 'package:module_external_dependencies/flutter_modular.dart';
import 'package:module_todo/i18n/translate.dart';
import 'package:module_todo/stores/add_todo_store.dart';
import 'package:module_todo/view_models/add_todo_view_model.dart';
import 'package:module_todo/widgets/todo_add_todo_button_widget.dart';
import 'package:module_todo/widgets/todo_add_todo_page_app_bar_widget.dart';
import 'package:module_todo/widgets/todo_text_field_widget.dart';

class AddTodoPage extends StatefulWidget {
  const AddTodoPage({Key? key}) : super(key: key);

  @override
  State<AddTodoPage> createState() => _AddTodoPageState();
}

class _AddTodoPageState extends State<AddTodoPage> {
  final AddTodoStore _store = Modular.get<AddTodoStore>();

  @override
  Widget build(BuildContext context) {
    return TodoAppStateXWidget<AddTodoStore, AddTodoViewModel>(
        state: _store,
        builder: (state) => Scaffold(
            appBar: TodoAddTodoPageAppBarWidget(),
            body: Padding(
                padding: const EdgeInsets.only(
                    top: TodoAppDimens.xxxmacro, right: TodoAppDimens.xxxmacro, left: TodoAppDimens.xxxmacro),
                child: CustomScrollView(slivers: [
                  SliverToBoxAdapter(
                      child: Padding(
                          padding: const EdgeInsets.only(bottom: TodoAppDimens.nano),
                          child: Text(TranslateTodo.strings.taskTitle).h4Bold(color: TodoAppColors.monoBlack))),
                  SliverToBoxAdapter(child: TodoTextFieldWidget(controller: state.taskTitleController))
                ])),
            bottomNavigationBar: TodoAddTodoButtonWidget(taskTitleIsNotEmpty: state.taskTitleIsNotEmpty)));
  }
}
