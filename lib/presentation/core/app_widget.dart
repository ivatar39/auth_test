import 'package:auth_test/application/auth/auth_bloc.dart';
import 'package:auth_test/presentation/core/injection.dart';
import 'package:auth_test/presentation/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:auth_test/presentation/core/i18n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

const String kAppTitle = 'AuthTest';
const Color kPrimaryColor = Color(0xff65A0DA);

class AppWidget extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    final baseTheme = ThemeData.light();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
      ],
      child: MaterialApp.router(
        title: kAppTitle,
        routeInformationParser: _appRouter.defaultRouteParser(),
        theme: baseTheme.copyWith(
          primaryColor: kPrimaryColor,
          buttonColor: kPrimaryColor,
          colorScheme: baseTheme.colorScheme.copyWith(
            primary: kPrimaryColor,
            secondary: kPrimaryColor,
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ),
        routerDelegate: _appRouter.delegate(),
        localizationsDelegates: const [
          I18nDelegate(),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: I18nDelegate.supportedLocals,
      ),
    );
  }
}
