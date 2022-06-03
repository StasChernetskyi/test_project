import 'package:test_project/src/models/user_entity.dart';

abstract class UserRepository {
  Future<List<UserEntity>> getUsers();
}
