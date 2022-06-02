import 'package:flutter/material.dart';
import 'package:test_project/res/app_text_style.dart';
import 'package:test_project/src/components/widgets/page_widget.dart';
import 'package:test_project/src/components/widgets/user_item_widget.dart';
import 'package:test_project/src/models/user_entity.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      appBar: AppBar(
        title: Text(
          "Test project",
          style: AppTextStyle.homeAppBarTitle,
        ),
      ),
      child: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) => const UserItemWidget(
          user: UserEntity(
            id: 1,
            firstName: "The",
            lastName: "Rock",
            imageUrl: "https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg",
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(
          height: 24.0,
        ),
      ),
    );
  }
}
