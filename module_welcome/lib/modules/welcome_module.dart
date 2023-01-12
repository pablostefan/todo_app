import 'package:module_commons/commons.dart';
import 'package:module_external_dependencies/flutter_modular.dart';
import 'package:module_welcome/pages/splash_screen_page.dart';

class WelcomeModule extends Module {
  @override
  List<ModularRoute> get routes =>
      [ChildRoute(TodoAppRoutes.splashScreen, child: (context, args) => const SplashScreenPage())];
}
