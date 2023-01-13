import 'package:flutter_modular/flutter_modular.dart';
import 'package:module_commons/commons.dart';
import 'package:module_core/database/models/todo_model.dart';
import 'package:module_core/repositories/todo/interface/todo_interface.dart';
import 'package:module_todo/view_models/add_todo_view_model.dart';

class AddTodoStore extends TodoAppStateX<AddTodoViewModel> {
  final ITodoRepository todoRepository;

  AddTodoStore({required this.todoRepository}) : super(AddTodoViewModel());

  @override
  void init() {
    state.taskTitleController.addListener(_setTaskTitleIsNotEmpty);
    super.init();
  }

  void _setTaskTitleIsNotEmpty() {
    state.taskTitleIsNotEmpty = state.taskTitleController.text.isNotEmpty;
    executeState(state);
  }

  void addTodo() async {
    var response = await todoRepository.saveAndUpdate(_newTodo);
    response.fold((error) => null, (success) => _pop());
  }

  void _pop() => Modular.to.pop();

  TodoModel get _newTodo => TodoModel(name: state.taskTitleController.text);
}
