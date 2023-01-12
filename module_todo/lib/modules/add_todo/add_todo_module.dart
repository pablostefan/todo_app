import 'package:module_commons/commons.dart';
import 'package:module_external_dependencies/flutter_modular.dart';
import 'package:module_todo/pages/add_todo_page.dart';
import 'package:module_todo/stores/add_todo_store.dart';

final List<Bind> addDodoDi = [Bind.factory((i) => AddTodoStore())];
final List<ModularRoute> addTodoRoute = [
  ChildRoute(TodoAppRoutes.addTodo, child: (context, args) => const AddTodoPage())
];
