import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:test_project/src/blocs/user_info/user_info_bloc.dart';

class UserInfoCubitTest {
  void main() {
    group("User Info Cubit test", () {
      blocTest<UserInfoCubit, UserInfoState>(
        "Test User Info Cubit printLog",
        build: () {
          return UserInfoCubit();
        },
        act: (c) => c.printLog(),
        expect: () => <UserInfoState>[],
      );
    });
  }
}
