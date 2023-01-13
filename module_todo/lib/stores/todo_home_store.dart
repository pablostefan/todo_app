import 'package:module_commons/commons.dart';
import 'package:module_core/database/models/todo_model.dart';
import 'package:module_core/repositories/todo/interface/todo_interface.dart';
import 'package:module_external_dependencies/flutter_modular.dart';
import 'package:module_todo/view_models/todo_home_view_model.dart';

class TodoHomeStore extends TodoAppStateX<TodoHomeViewModel> {
  final ITodoRepository todoRepository;

  TodoHomeStore({required this.todoRepository}) : super(TodoHomeViewModel());

  @override
  void init() {
    _getAllTodos();
    state.searchController.addListener(_onChangeSearch);
    super.init();
  }

  void _getAllTodos() async {
    var response = await todoRepository.getAll();
    response.fold((error) => null, _getAllTodosSuccess);
  }

  void _getAllTodosSuccess(List<TodoModel> todos) {
    state.todos = todos;
    executeState(state);
  }

  void _onChangeSearch() {}

  void deleteTodo(TodoModel todoModel) {}

  void changeDoneTodo(TodoModel todoModel) {
    todoModel.done = !todoModel.done;
    executeState(state);
  }

  void openAddTodoPage() => Modular.to.pushNamed(TodoAppRoutes.addTodo);
}
