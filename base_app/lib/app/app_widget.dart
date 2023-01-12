import 'package:flutter/material.dart';
import 'package:module_commons/commons.dart';
import 'package:module_external_dependencies/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: "todo_app",
        routeInformationParser: Modular.routeInformationParser,
        routerDelegate: Modular.routerDelegate,
        theme: ThemeData(
            fontFamily: "Inter",
            pageTransitionsTheme: const PageTransitionsTheme(builders: <TargetPlatform, PageTransitionsBuilder>{
              TargetPlatform.android: CupertinoPageTransitionsBuilder(),
              TargetPlatform.iOS: CupertinoPageTransitionsBuilder()
            }),
            highlightColor: Colors.transparent,
            bottomSheetTheme: const BottomSheetThemeData(backgroundColor: TodoAppColors.darkPrimary),
            scaffoldBackgroundColor: TodoAppColors.darkPrimary,
            splashColor: TodoAppColors.transparent,
            hoverColor: TodoAppColors.transparent,
            splashFactory: NoSplash.splashFactory,
            brightness: Brightness.dark,
            colorScheme: const ColorScheme.dark(secondary: TodoAppColors.highlightsYellow),
            textSelectionTheme: TextSelectionThemeData(
                cursorColor: TodoAppColors.monoBlack,
                selectionColor: TodoAppColors.darkSecondary.withOpacity(TodoAppOpacity.oneEighth),
                selectionHandleColor: TodoAppColors.darkSecondary.withOpacity(TodoAppOpacity.oneEighth))),
        darkTheme: ThemeData(
            fontFamily: "Inter",
            pageTransitionsTheme: const PageTransitionsTheme(builders: <TargetPlatform, PageTransitionsBuilder>{
              TargetPlatform.android: CupertinoPageTransitionsBuilder(),
              TargetPlatform.iOS: CupertinoPageTransitionsBuilder()
            }),
            highlightColor: Colors.transparent,
            bottomSheetTheme: const BottomSheetThemeData(backgroundColor: TodoAppColors.darkPrimary),
            scaffoldBackgroundColor: TodoAppColors.todoBackGround,
            splashColor: TodoAppColors.transparent,
            hoverColor: TodoAppColors.transparent,
            splashFactory: NoSplash.splashFactory,
            brightness: Brightness.dark,
            colorScheme: const ColorScheme.dark(secondary: TodoAppColors.highlightsYellow),
            textSelectionTheme: TextSelectionThemeData(
                cursorColor: TodoAppColors.monoBlack,
                selectionColor: TodoAppColors.darkSecondary.withOpacity(TodoAppOpacity.oneEighth),
                selectionHandleColor: TodoAppColors.darkSecondary.withOpacity(TodoAppOpacity.oneEighth))),
        themeMode: ThemeMode.dark,
        debugShowCheckedModeBanner: false);
  }
}
