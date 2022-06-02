import 'package:flutter/material.dart';
import 'package:test_project/src/components/widgets/page_widget.dart';
import 'package:test_project/src/components/widgets/user_name_widget.dart';
import 'package:test_project/src/models/user_entity.dart';

class UserInfoPage extends StatelessWidget {
  final UserEntity user;

  const UserInfoPage({required this.user, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      appBar: AppBar(),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.network(
              user.imageUrl,
            ),
            const SizedBox(
              height: 24.0,
            ),
            UserNameWidget(firstName: user.firstName, lastName: user.lastName),
          ],
        ),
      ),
    );
  }
}
