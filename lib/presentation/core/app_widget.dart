import 'package:auth_test/presentation/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:auth_test/presentation/core/i18n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

const String kAppTitle = 'AuthTest';

class AppWidget extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: kAppTitle,
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      localizationsDelegates: const [
        I18nDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: I18nDelegate.supportedLocals,
    );
  }
}
