import 'package:module_external_dependencies/flutter_modular.dart';
import 'package:module_todo/modules/todo_module.dart';
import 'package:module_welcome/modules/welcome_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: WelcomeModule()),
    ModuleRoute(Modular.initialRoute, module: TodoModule()),
  ];
}
