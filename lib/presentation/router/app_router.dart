import 'package:auth_test/presentation/restore_password/restore_password_page.dart';
import 'package:auth_test/presentation/sign_in/sign_in_page.dart';
import 'package:auth_test/presentation/home/home_page.dart';
import 'package:auth_test/presentation/registration/registration_page.dart';
import 'package:auth_test/presentation/splash/splash_page.dart';
import 'package:auto_route/annotations.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: RestorePasswordPage, fullscreenDialog: true),
    MaterialRoute(page: RegistrationPage, fullscreenDialog: true),
    MaterialRoute(page: HomePage),
  ],
)
class $AppRouter {}
