import 'package:module_commons/commons.dart';
import 'package:module_core/repositories/todo/todo_repository.dart';
import 'package:module_external_dependencies/flutter_modular.dart';
import 'package:module_todo/pages/todo_home_page.dart';
import 'package:module_todo/stores/todo_home_store.dart';

final List<Bind> todoHomeDi = [
  Bind.lazySingleton((i) => TodoRepository()),
  Bind.factory((i) => TodoHomeStore(todoRepository: i.get()))
];
final List<ModularRoute> todoHomeRoute = [
  ChildRoute(TodoAppRoutes.home, child: (context, args) => const TodoHomePage())
];
