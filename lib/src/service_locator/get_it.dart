import 'package:get_it/get_it.dart';
import 'package:test_project/src/repository/user_repository.dart';
import 'package:test_project/src/services/user/mock_user_service.dart';
import 'package:test_project/src/services/user/user_service.dart';

final getIt = GetIt.instance;

Future<void> setupDependencies() async {
  // services
  getIt.registerSingleton<UserService>(MockUserService());

  // repositories
  getIt.registerSingleton<UserRepository>(UserRepository(getIt()));
}
