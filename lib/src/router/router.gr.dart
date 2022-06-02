// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:test_project/pages/home_page.dart' as _i1;
import 'package:test_project/pages/user_info_page.dart' as _i2;
import 'package:test_project/src/models/user_entity.dart' as _i5;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    UserInfoRoute.name: (routeData) {
      final args = routeData.argsAs<UserInfoRouteArgs>();
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i2.UserInfoPage(user: args.user, key: args.key));
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(HomeRoute.name, path: '/'),
        _i3.RouteConfig(UserInfoRoute.name, path: '/user-info')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.UserInfoPage]
class UserInfoRoute extends _i3.PageRouteInfo<UserInfoRouteArgs> {
  UserInfoRoute({required _i5.UserEntity user, _i4.Key? key})
      : super(UserInfoRoute.name,
            path: '/user-info',
            args: UserInfoRouteArgs(user: user, key: key));

  static const String name = 'UserInfoRoute';
}

class UserInfoRouteArgs {
  const UserInfoRouteArgs({required this.user, this.key});

  final _i5.UserEntity user;

  final _i4.Key? key;

  @override
  String toString() {
    return 'UserInfoRouteArgs{user: $user, key: $key}';
  }
}
