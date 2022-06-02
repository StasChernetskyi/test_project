import 'package:auto_route/auto_route.dart';

import 'package:test_project/pages/first_page.dart';
import 'package:test_project/pages/second_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: FirstPage, initial: true),
    AutoRoute(page: SecondPage),
  ],
)
class $AppRouter {}
