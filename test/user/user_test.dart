import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test_project/src/models/user_entity.dart';

import '../mocks/mock_user_entity.dart';

class UserTest {
  void main() {
    late UserEntity user;

    const String firstName = "The";
    const String lastName = "Rock";
    const String fullName = "The Rock";

    setUpAll(() {
      user = MockUserEntity();
    });

    group("User test", () {
      setUp(() {
        when(() => user.firstName).thenReturn(firstName);
        when(() => user.lastName).thenReturn(lastName);
        when(() => user.fullName()).thenReturn(fullName);
      });

      test("User first name", () {
        const expected = firstName;

        final result = user.firstName;

        expect(result, expected);
      });
      test("User second name", () {
        const expected = lastName;

        final result = user.lastName;

        expect(result, expected);
      });
      test("User full name", () {
        const expected = fullName;

        final result = user.fullName();

        expect(result, expected);
      });
    });
  }
}
