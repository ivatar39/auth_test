import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auth_test/application/auth/auth_bloc.dart';
import 'package:auth_test/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auth_test/presentation/router/app_router.gr.dart';
import 'package:auth_test/presentation/core/i18n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.signInFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
                  (failure) => {
                    FlushbarHelper.createError(
                      message: failure.map(
                        cancelledByUser: (_) => I18n.cancelled,
                        serverError: (_) => I18n.unexpectedError,
                        emailAlreadyInUse: (_) => I18n.emailInUse,
                        invalidEmailAndPasswordCombination: (_) =>
                            I18n.invalidEmailAndPasswordCombinationError,
                        emailSent: (value) => I18n.emailSent,
                      ),
                    ).show(context),
                  },
                  (_) {
                    context.router.replace(const HomePageRoute());
                    context
                        .read<AuthBloc>()
                        .add(const AuthEvent.authCheckRequested());
                  },
                ));
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(18.0),
          child: SafeArea(
            child: Form(
              autovalidateMode: state.autovalidateMode,
              child: ListView(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: I18n.eMail,
                    ),
                    keyboardType: TextInputType.emailAddress,
                    autocorrect: false,
                    onChanged: (value) => context
                        .read<SignInFormBloc>()
                        .add(SignInFormEvent.emailChanged(value)),
                    validator: (_) => context
                        .read<SignInFormBloc>()
                        .state
                        .emailAddress
                        .value
                        .fold(
                          (failure) => failure.maybeMap(
                            invalidEmail: (_) => I18n.invalidEMail,
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
                  ),
                  const SizedBox(height: 24),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock),
                      labelText: I18n.password,
                    ),
                    enableSuggestions: false,
                    onChanged: (value) => context
                        .read<SignInFormBloc>()
                        .add(SignInFormEvent.passwordChanged(value)),
                    autocorrect: false,
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    validator: (_) => context
                        .read<SignInFormBloc>()
                        .state
                        .password
                        .value
                        .fold(
                          (failure) => failure.maybeMap(
                            shortPassword: (_) => I18n.shortPassword,
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        context.read<SignInFormBloc>().add(const SignInFormEvent
                            .signInWithEmailAndPasswordPressed());
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
                        context.read<SignInFormBloc>().add(
                            const SignInFormEvent.signInWithGooglePressed());
                      },
                      child: Text(I18n.signInWithGoogle),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Center(child: Text(I18n.forgotPassword)),
                  TextButton(
                    onPressed: () {
                      context
                          .read<SignInFormBloc>()
                          .add(const SignInFormEvent.resetPasswordPressed());
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
      },
    );
  }
}
