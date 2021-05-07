import 'package:auth_test/application/auth/auth_bloc.dart';
import 'package:auth_test/presentation/core/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auth_test/presentation/router/app_router.gr.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) {
            context.router.replace(const HomePageRoute());
          },
          unAuthenticated: (_) {
            context.router.replace(const SignInPageRoute());
          },
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            backgroundColor: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
