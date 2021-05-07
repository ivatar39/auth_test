import 'package:auth_test/application/auth/registration_form/registration_form_bloc.dart';
import 'package:auth_test/presentation/core/injection.dart';
import 'package:auth_test/presentation/registration/widgets/registration_form.dart';
import 'package:flutter/material.dart';
import 'package:auth_test/presentation/core/i18n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(I18n.registration),
      ),
      body: BlocProvider(
        create: (_) => getIt<RegistrationFormBloc>(),
        child: RegistrationForm(),
      ),
    );
  }
}
