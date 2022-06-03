import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test_project/src/blocs/home/home_bloc.dart';

import 'package:test_project/src/models/user_entity.dart';
import 'package:test_project/src/repository/user_repository.dart';
import 'package:test_project/src/service_locator/get_it.dart';

import '../mocks/mock_user_repository.dart';

class HomeCubitTest {
  void main() {
    late UserRepository userRepository;

    final List<UserEntity> users = List<UserEntity>.generate(
      5,
      (index) => UserEntity(
          id: index,
          firstName: "The",
          lastName: "Rock $index",
          imageUrl: "https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg"),
    );

    setUpAll(() {
      userRepository = MockUserRepository();
    });

    group("Home Cubit test", () {
      setUp(() {
        when(() => userRepository.getUsers()).thenAnswer((_) async => users);
        getIt.registerFactory<UserRepository>(() => userRepository);
      });

      blocTest<HomeCubit, HomeState>(
        "Test Home Cubit",
        build: () {
          return HomeCubit(getIt.get<UserRepository>());
        },
        expect: () => <HomeState>[HomeState(users: users, isLoading: false)],
      );
    });
  }
}
