import 'package:flutter/material.dart';
import 'package:module_commons/commons.dart';
import 'package:module_core/database/models/todo_model.dart';
import 'package:module_todo/widgets/todo_%20dismissible_widget.dart';
import 'package:module_todo/widgets/todo_app_dismissible_back_ground_widget.dart';
import 'package:module_todo/widgets/todo_item_widget.dart';

class TodoListWidget extends StatelessWidget {
  final List<TodoModel> todos;
  final Function(TodoModel todoModel) delete;
  final ScrollController horizontalScrollController;
  final Function(TodoModel todoModel) changeDoneTodo;

  const TodoListWidget({
    required this.todos,
    required this.delete,
    required this.horizontalScrollController,
    required this.changeDoneTodo,
    Key? key,
  }) : super(key: key);

  ScrollController? _getScrollController(TodoModel todoModel) {
    var isFirstCard = todos.first == todoModel;

    return isFirstCard ? horizontalScrollController : null;
  }

  double get _height => TodoAppDimens.xlhg;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: CustomScrollView(slivers: [
      SliverPadding(
          padding: const EdgeInsets.only(top: TodoAppDimens.xxxs),
          sliver: SliverList(
              delegate: SliverChildListDelegate(todos
                  .map((todo) => TodoDismissibleWidget(
                      direction: DismissDirection.endToStart,
                      scrollController: _getScrollController(todo),
                      onDismissed: (_) => delete(todo),
                      background: TodoAppDismissibleBackGroundWidget(height: _height),
                      key: ValueKey(todo),
                      child: TodoItemWidget(todoModel: todo, changeDoneTodo: changeDoneTodo, height: _height)))
                  .toList())))
    ]));
  }
}
