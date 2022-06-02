import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:test_project/src/components/widgets/user_item_widget.dart';
import 'package:test_project/src/models/user_entity.dart';

class UserItemWidgetTest {
  void main() {
    const UserEntity user = UserEntity(
      id: 0,
      firstName: "The",
      lastName: "Rock",
      imageUrl: "https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg",
    );

    const Widget testWidget = MaterialApp(
      home: Scaffold(
        body: UserItemWidget(user: user),
      ),
    );

    setUpAll(() => HttpOverrides.global = null);

    group("User Item Widget test", () {
      testWidgets('Test the number of image widgets', (WidgetTester tester) async {
        await tester.pumpWidget(testWidget);

        final Finder imageFinder = find.byType(Image);

        expect(imageFinder, findsOneWidget);
      });

      testWidgets('Test the image shown', (WidgetTester tester) async {
        await tester.pumpWidget(testWidget);

        final Image networkImage = tester.widget(find.byType(Image));

        expect((networkImage.image as NetworkImage).url, user.imageUrl);
      });

      testWidgets('Test the number of text widgets', (WidgetTester tester) async {
        await tester.pumpWidget(testWidget);

        final Finder textFinder = find.byType(Text);

        expect(textFinder, findsOneWidget);
      });

      testWidgets('Test the full name is displayed correctly', (WidgetTester tester) async {
        await tester.pumpWidget(testWidget);

        final Text textWidget = tester.widget(find.byType(Text));

        expect(textWidget.data, user.fullName());
      });

      testWidgets('Test the number of hero widgets', (WidgetTester tester) async {
        await tester.pumpWidget(testWidget);

        final Finder heroFinder = find.byType(Hero);

        expect(heroFinder, findsOneWidget);
      });

      testWidgets('Test the tag in hero widget', (WidgetTester tester) async {
        await tester.pumpWidget(testWidget);

        final Hero heroWidget = tester.widget(find.byType(Hero));

        expect(heroWidget.tag, "user ${user.id}");
      });

      testWidgets('Test the number of TextButton widgets', (WidgetTester tester) async {
        await tester.pumpWidget(testWidget);

        final Finder textButtonFinder = find.byType(TextButton);

        expect(textButtonFinder, findsOneWidget);
      });

      testWidgets('Test onPressed on TextButton', (WidgetTester tester) async {
        await tester.pumpWidget(testWidget);

        final TextButton textButtonWidget = tester.widget(find.byType(TextButton));

        expect(textButtonWidget.onPressed != null, true);
      });
    });
  }
}
