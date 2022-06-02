import 'package:flutter/material.dart';
import 'package:test_project/res/app_text_style.dart';

class UserNameWidget extends StatelessWidget {
  final String userFullName;

  const UserNameWidget({required this.userFullName, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      userFullName,
      style: AppTextStyle.userNameTextStyle,
    );
  }
}
