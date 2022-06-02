import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:test_project/src/components/widgets/page_widget.dart';

class PageWidgetTest {
  void main() {
    final Widget child = Container();
    final PreferredSizeWidget appBar = AppBar();
    final Widget testWidget = MaterialApp(
      home: Scaffold(
        body: PageWidget(
          appBar: appBar,
          child: child,
        ),
      ),
    );

    group("Page Widget test", () {
      testWidgets('Test child', (WidgetTester tester) async {
        await tester.pumpWidget(testWidget);

        final Finder childFinder = find.byType(Container);

        expect(childFinder, findsOneWidget);
      });

      testWidgets('Test appBar', (WidgetTester tester) async {
        await tester.pumpWidget(testWidget);

        final Finder appBarFinder = find.byType(AppBar);

        expect(appBarFinder, findsOneWidget);
      });
    });
  }
}
