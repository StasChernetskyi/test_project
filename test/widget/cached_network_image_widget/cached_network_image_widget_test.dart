import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:test_project/src/components/widgets/cached_network_image_widget.dart';

class CachedNetworkImageWidgetTest {
  void main() {
    const String imageUrl = "https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg";
    const Widget testWidget = MaterialApp(
      home: Scaffold(
        body: CachedNetworkImageWidget(
          imageUrl: imageUrl,
        ),
      ),
    );

    group("Cached Network Image Widget test", () {
      testWidgets('Test the image shown', (WidgetTester tester) async {
        await tester.pumpWidget(testWidget);

        final CachedNetworkImage cachedNetworkImage = tester.widget(find.byType(CachedNetworkImage));

        expect(cachedNetworkImage.imageUrl, imageUrl);
      });
    });
  }
}
