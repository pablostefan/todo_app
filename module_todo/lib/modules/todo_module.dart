import 'package:module_external_dependencies/flutter_modular.dart';
import 'package:module_todo/modules/add_todo/add_todo_module.dart';
import 'package:module_todo/modules/todo_home/todo_home_module.dart';

class TodoModule extends Module {
  @override
  List<Bind> get binds => [...todoHomeDi, ...addDodoDi];

  @override
  List<ModularRoute> get routes => [...todoHomeRoute, ...addTodoRoute];
}
