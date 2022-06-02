import 'package:test_project/src/models/user_entity.dart';
import 'package:test_project/src/services/user/user_service.dart';

class MockUserService implements UserService {
  @override
  Future<List<UserEntity>> getUsers() {
    return Future.value(
      List.generate(
        5,
        (index) => UserEntity(
            id: index,
            firstName: "The",
            lastName: "Rock $index",
            imageUrl: "https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg"),
      ),
    );
  }
}
