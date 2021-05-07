import 'package:auth_test/presentation/sign_in/widgets/sign_in_body.dart';
import 'package:flutter/material.dart';
import 'package:auth_test/presentation/core/i18n.dart';

class SignInPage extends StatelessWidget {
  const SignInPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(I18n.welcome),
      ),
      body: Center(child: SignInBody()),
    );
  }
}
