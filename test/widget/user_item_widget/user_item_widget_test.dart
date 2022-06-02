import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:test_project/src/components/widgets/user_item_widget.dart';
import 'package:test_project/src/models/user_entity.dart';

class UserItemWidgetTest {
  void main() {
    setUpAll(() => HttpOverrides.global = null);

    const UserEntity user = UserEntity(
      id: 0,
      firstName: "The",
      lastName: "Rock",
      imageUrl: "https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg",
    );

    group("User Item Widget", () {
      testWidgets('Test the number of image widgets', (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: UserItemWidget(user: user),
            ),
          ),
        );

        final Finder imageFinder = find.byType(Image);

        expect(imageFinder, findsOneWidget);
      });
    });

    testWidgets('Test the number of text widgets', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: UserItemWidget(user: user),
          ),
        ),
      );

      final Finder textFinder = find.byType(Text);

      expect(textFinder, findsOneWidget);
    });

    testWidgets('Test the full name is displayed correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: UserItemWidget(user: user),
          ),
        ),
      );

      final Text textWidget = tester.widget(find.byType(Text));

      expect(textWidget.data, "The Rock");
    });
  }
}
