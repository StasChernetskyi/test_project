import 'package:flutter/material.dart';
import 'package:test_project/res/app_text_style.dart';

class UserNameWidget extends StatelessWidget {
  final String firstName;
  final String lastName;

  const UserNameWidget({required this.firstName, required this.lastName, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "$firstName $lastName",
      style: AppTextStyle.userNameTextStyle,
    );
  }
}
