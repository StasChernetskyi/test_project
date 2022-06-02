import 'package:flutter/material.dart';
import 'package:test_project/res/app_colors.dart';

class AppTextStyle {
  static const TextStyle _defaultTextStyle = TextStyle();

  static TextStyle userNameTextStyle = _defaultTextStyle.copyWith(
    color: AppColors.textColor,
    fontSize: 16.0,
  );

  static TextStyle homeAppBarTitle = _defaultTextStyle.copyWith(
    color: AppColors.homeAppBarTitleColor,
    fontSize: 24.0,
  );
}
