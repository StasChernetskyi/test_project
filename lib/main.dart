import 'package:flutter/material.dart';

import 'package:test_project/src/router/router.gr.dart';
import 'package:test_project/src/service_locator/get_it.dart';

void main() {
  configureDependencies();
  runApp(App());
}

class App extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();

  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Test project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
