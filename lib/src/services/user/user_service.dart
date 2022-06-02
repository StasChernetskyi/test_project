import 'package:test_project/src/models/user_entity.dart';

abstract class UserService {
  Future<List<UserEntity>> getUsers();
}
