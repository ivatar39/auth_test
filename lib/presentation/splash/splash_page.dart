import 'package:auth_test/presentation/core/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:auth_test/presentation/core/i18n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auth_test/presentation/router/app_router.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(
              backgroundColor: kPrimaryColor,
            ),
            TextButton(
              onPressed: () {
                context.router.push(const SignInPageRoute());
              },
              child: Text(I18n.next),
            ),
          ],
        ),
      ),
    );
  }
}
