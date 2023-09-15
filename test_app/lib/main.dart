import 'package:flutter/material.dart';

void main() {
  print('Project is not supposed to be run. It is only for testing purposes.');
}

class MainApp extends StatelessWidget {
  final String? title;

  const MainApp({super.key, this.title = ''});

  // expect_lint: avoid_returning_widgets
  Widget body() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    // expect_lint: avoid_non_null_assertion
    final nonNullTitle = title!;
    return MaterialApp(
      home: Scaffold(
        body: Center(
          // expect_lint: avoid_non_null_assertion
          child: Text(title!),
        ),
      ),
    );
  }
}
