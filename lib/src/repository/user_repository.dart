import 'package:injectable/injectable.dart';

import 'package:test_project/src/models/user_entity.dart';
import 'package:test_project/src/services/user/user_service.dart';

//todo need abstraction
@singleton
class UserRepository {
  final UserService _service;

  UserRepository(this._service);

  Future<List<UserEntity>> getUsers() => _service.getUsers();
}
