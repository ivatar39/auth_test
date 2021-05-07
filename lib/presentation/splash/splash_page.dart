import 'package:flutter/material.dart';
import 'package:auth_test/presentation/core/i18n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auth_test/presentation/router/app_router.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const CircularProgressIndicator(),
            TextButton(
              onPressed: () {
                context.router.push(const AuthPageRoute());
              },
              child: Text(I18n.next),
            ),
          ],
        ),
      ),
    );
  }
}
