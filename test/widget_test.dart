import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_project/main.dart';
import 'package:test_project/src/components/widgets/page_widget.dart';

import 'package:test_project/src/components/widgets/user_item_widget.dart';
import 'package:test_project/src/models/user_entity.dart';

void main() {
  testWidgets('Test', (WidgetTester tester) async {
    await tester.pumpWidget(const UserItemWidget(
      user: UserEntity(
          id: 0,
          firstName: "The",
          lastName: "Rock",
          imageUrl: "https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg"),
    ));

    final imageFinder = tester.widget(find.byType(Image));

    expect(imageFinder, findsOneWidget);
  });
}
