import 'package:injectable/injectable.dart';

import 'package:test_project/src/models/user_entity.dart';
import 'package:test_project/src/repository/user_repository.dart';
import 'package:test_project/src/services/user/user_service.dart';

@Singleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final UserService _service;

  UserRepositoryImpl(this._service);

  @override
  Future<List<UserEntity>> getUsers() => _service.getUsers();
}
