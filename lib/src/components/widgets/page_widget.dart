import 'package:flutter/material.dart';

class PageWidget extends StatelessWidget {
  final Widget child;
  final PreferredSizeWidget? appBar;

  const PageWidget({required this.child, this.appBar, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: SafeArea(
        child: child,
      ),
    );
  }
}
