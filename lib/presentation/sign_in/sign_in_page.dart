import 'package:auth_test/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:auth_test/presentation/core/injection.dart';
import 'package:auth_test/presentation/sign_in/widgets/sign_in_body.dart';
import 'package:flutter/material.dart';
import 'package:auth_test/presentation/core/i18n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatelessWidget {
  const SignInPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(I18n.welcome),
      ),
      body: BlocProvider(
        create: (_) => getIt<SignInFormBloc>(),
        child: Center(
          child: SignInBody(),
        ),
      ),
    );
  }
}
