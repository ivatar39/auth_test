import 'package:auth_test/presentation/auth/auth_page.dart';
import 'package:auth_test/presentation/home/home_page.dart';
import 'package:auth_test/presentation/registration/registration_page.dart';
import 'package:auth_test/presentation/splash/splash_page.dart';
import 'package:auto_route/annotations.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: AuthPage),
    MaterialRoute(page: RegistrationPage, fullscreenDialog: true),
    MaterialRoute(page: HomePage),
  ],
)
class $AppRouter {}
