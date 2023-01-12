import 'dart:async';

import 'package:base_app/app/app_module.dart';
import 'package:base_app/app/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:module_commons/commons.dart';
import 'package:module_external_dependencies/flutter_modular.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Modular.setInitialRoute(TodoAppRoutes.splashScreen);
  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
