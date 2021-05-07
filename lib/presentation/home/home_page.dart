import 'package:auth_test/application/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:auth_test/presentation/core/i18n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auth_test/presentation/router/app_router.gr.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(I18n.home),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            context.read<AuthBloc>().add(const AuthEvent.signedOut());
            context.router.replace(const SignInPageRoute());
          },
          child: Text(I18n.signOff),
        ),
      ),
    );
  }
}
