import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_project/src/blocs/home/home_bloc.dart';
import 'package:test_project/src/blocs/user_info/user_info_bloc.dart';

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
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<HomeCubit>(create: (_) => getIt()..getUsers()),
            BlocProvider<UserInfoCubit>(create: (_) => getIt()),
          ],
          child: child ?? const SizedBox(),
        );
      },
    );
  }
}
