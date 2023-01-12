import 'package:module_commons/commons.dart';
import 'package:module_todo/view_models/add_todo_view_model.dart';

class AddTodoStore extends TodoAppStateX<AddTodoViewModel> {
  AddTodoStore() : super(AddTodoViewModel());

  @override
  void init() {
    state.taskTitleController.addListener(_setTaskTitleIsNotEmpty);
    super.init();
  }

  void _setTaskTitleIsNotEmpty() {
    state.taskTitleIsNotEmpty = state.taskTitleController.text.isNotEmpty;
    executeState(state);
  }
}
