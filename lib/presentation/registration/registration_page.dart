import 'package:flutter/material.dart';
import 'package:auth_test/presentation/core/i18n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auth_test/presentation/router/app_router.gr.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(I18n.registration),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            context.router.replace(const HomePageRoute());
          },
          child: Text(I18n.register),
        ),
      ),
    );
  }
}
