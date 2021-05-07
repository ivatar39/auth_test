import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auth_test/presentation/router/app_router.gr.dart';
import 'package:auth_test/presentation/core/i18n.dart';

class SignInBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: SafeArea(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: I18n.eMail,
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 24),
              TextFormField(
                decoration: InputDecoration(
                  labelText: I18n.password,
                ),
                enableSuggestions: false,
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    context.router.replace(const HomePageRoute());
                  },
                  child: Text(I18n.signIn),
                ),
              ),
              const SizedBox(height: 18),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    context.router.replace(const HomePageRoute());
                  },
                  child: Text(I18n.signInWithGoogle),
                ),
              ),
              const SizedBox(height: 24),
              Text(I18n.forgotPassword),
              TextButton(
                onPressed: () {
                  context.router.push(const RestorePasswordPageRoute());
                },
                child: Text(I18n.restorePassword),
              ),
              const SizedBox(height: 18),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(I18n.dontHaveAccount),
                  TextButton(
                    onPressed: () {
                      context.router.replace(const RegistrationPageRoute());
                    },
                    child: Text(I18n.register),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
