import 'package:flutter/material.dart';

const String kAppTitle = 'AuthTest';

class AppWidget extends StatelessWidget {
  const AppWidget();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kAppTitle,
      home: Scaffold(),
    );
  }
}
