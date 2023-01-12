import 'package:flutter/material.dart';
import 'package:module_assets/assets.dart';
import 'package:module_commons/commons.dart';
import 'package:module_external_dependencies/flutter_modular.dart';
import 'package:module_external_dependencies/lottie.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    var duration = const Duration(milliseconds: 2500);
    Future.delayed(duration, () => Modular.to.navigate(TodoAppRoutes.home));
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: TodoAppColors.todoBackGround,
        body: Center(
            child: Lottie.asset(TodoAppAnimations.splash.json,
                package: TodoAppAnimations.splash.package, repeat: true, animate: true)));
  }
}
