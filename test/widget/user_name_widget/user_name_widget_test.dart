import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:test_project/src/components/widgets/user_name_widget.dart';

class UserNameWidgetTest {
  void main() {
    const String userFullName = "The Rock";

    group("User Name Widget test", () {
      testWidgets('Test the number of text widgets', (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: UserNameWidget(
                userFullName: userFullName,
              ),
            ),
          ),
        );

        final Finder textFinder = find.byType(Text);

        expect(textFinder, findsOneWidget);
      });

      testWidgets('Test value in text widget', (WidgetTester tester) async {
        await tester.pumpWidget(
          const MaterialApp(
            home: Scaffold(
              body: UserNameWidget(
                userFullName: userFullName,
              ),
            ),
          ),
        );

        final Text textWidget = tester.widget(find.byType(Text));

        expect(textWidget.data, userFullName);
      });
    });
  }
}
