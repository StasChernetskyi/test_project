import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:test_project/src/models/user_entity.dart';
import 'package:test_project/src/services/user/user_service.dart';

import '../mocks/mock_user_service.dart';

class UserServiceTest {
  void main() {
    late UserService userService;

    final Future<List<UserEntity>> users = Future.value(
      List<UserEntity>.generate(
        5,
        (index) => UserEntity(
            id: index,
            firstName: "The",
            lastName: "Rock $index",
            imageUrl: "https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg"),
      ),
    );

    setUpAll(() {
      userService = MockUserService();
    });

    group("User Service test", () {
      setUp(() {
        when(() => userService.getUsers()).thenAnswer((_) => users);
      });

      test("getUsers", () {
        final expected = users;

        final result = userService.getUsers();

        expect(result, expected);
      });
    });
  }
}
