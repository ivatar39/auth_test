import 'package:auth_test/presentation/restore_password/widgets/restore_password_body.dart';
import 'package:flutter/material.dart';
import 'package:auth_test/presentation/core/i18n.dart';

class RestorePasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(I18n.passwordRestoration),
      ),
      body: RestorePasswordBody(),
    );
  }
}
