import 'package:auto_route/auto_route.dart';

import 'package:test_project/pages/home_page.dart';
import 'package:test_project/pages/user_info_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: UserInfoPage, path: "/user-info"),
  ],
)
class $AppRouter {}
