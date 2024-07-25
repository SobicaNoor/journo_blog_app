import 'package:flutter/material.dart';

import 'core/constants/my_strings.dart';
import 'core/themes/my_themes.dart';
import 'presentation/router/router_imports.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: MyStrings.appName,
      theme: MyThemes.lightTheme,
      routerConfig: _appRouter.config(),
      //  home: const MyHomePage(title: MyStrings.appName),
    );
  }
}
