// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, prefer_single_quotes

import 'dart:async';

import 'package:flutter/widgets.dart';

/// A class generated by flappy_translator package containing localized strings
class I18n {
  static String get signIn => _getText('signIn');

  static String get signInWithGoogle => _getText('signInWithGoogle');

  static String get password => _getText('password');

  static String get showPassword => _getText('showPassword');

  static String get invalidPassword => _getText('invalidPassword');

  static String get shortPassword => _getText('shortPassword');

  static String get eMail => _getText('eMail');

  static String get invalidEMail => _getText('invalidEMail');

  static String get save => _getText('save');

  static String get registration => _getText('registration');

  static String get register => _getText('register');

  static String get unexpectedError => _getText('unexpectedError');

  static String get noConnectionError => _getText('noConnectionError');

  static String get invalidEmailAndPasswordCombinationError =>
      _getText('invalidEmailAndPasswordCombinationError');

  static String get cancelled => _getText('cancelled');

  static String get emailInUse => _getText('emailInUse');

  static String get home => _getText('home');

  static String get next => _getText('next');

  static String get ok => _getText('ok');

  static String get signOff => _getText('signOff');

  static String get dontHaveAccount => _getText('dontHaveAccount');

  static String get forgotPassword => _getText('forgotPassword');

  static String get restorePassword => _getText('restorePassword');

  static String get passwordRestoration => _getText('passwordRestoration');

  static String get welcome => _getText('welcome');

  static String get emailSent => _getText('emailSent');

  static late Map<String, String> _localizedValues;

  static const _enValues = {
    'signIn': 'Sign in',
    'signInWithGoogle': 'Sign in with Google',
    'password': 'Password',
    'showPassword': 'Show Password',
    'invalidPassword': 'Invalid Password',
    'shortPassword': 'Short Password',
    'eMail': 'E-mail',
    'invalidEMail': 'Invalid E-mail',
    'save': 'Save',
    'registration': 'Registration',
    'register': 'Register',
    'unexpectedError': 'Unexpected Error',
    'noConnectionError': 'Check your internet connection',
    'invalidEmailAndPasswordCombinationError':
        'Invalid email and password combination',
    'cancelled': 'Cancelled',
    'emailInUse': 'Email already in use',
    'home': 'Home',
    'next': 'Next',
    'ok': 'Ok',
    'signOff': 'Sign off',
    'dontHaveAccount': 'Don\'t have an account?',
    'forgotPassword': 'Forgot your password?',
    'restorePassword': 'Restore Password',
    'passwordRestoration': 'Password Restoration',
    'welcome': 'Welcome',
    'emailSent': 'Email with instructions was sent',
  };

  static const _ruValues = {
    'signIn': '????????',
    'signInWithGoogle': '???????? ?????????? Google',
    'password': '????????????',
    'showPassword': '???????????????? ????????????',
    'invalidPassword': '???????????????? ????????????',
    'shortPassword': '???????????????? ????????????',
    'eMail': '?????????????????????? ??????????',
    'invalidEMail': '???????????????? ?????????????????????? ??????????',
    'save': '??????????????????',
    'registration': '??????????????????????',
    'register': '????????????????????????????????????',
    'unexpectedError': '???????????????????????????? ????????????',
    'noConnectionError': '?????????????????? ???????? ????????????????-????????????????????',
    'invalidEmailAndPasswordCombinationError':
        '???????????????? ???????????????????? ???????????? ?????????????????????? ?????????? ?? ????????????',
    'cancelled': '????????????',
    'emailInUse': '?????????? ?????????? ?????? ????????????????????????',
    'home': '??????????????',
    'next': '??????????',
    'ok': '????',
    'signOff': '?????????? ???? ????????????????',
    'dontHaveAccount': '?????? ?????????????????',
    'forgotPassword': '???????????? ?????????????',
    'restorePassword': '???????????????????????? ????????????',
    'passwordRestoration': '???????????????????????????? ????????????',
    'welcome': '?????????? ????????????????????',
    'emailSent': '???????????? ?? ???????????????????????? ???????? ????????????????????',
  };

  static const _allValues = {
    'en': _enValues,
    'ru': _ruValues,
  };

  I18n(Locale locale) {
    _locale = locale;
    _localizedValues = {};
  }

  static late Locale _locale;

  static String _getText(String key) =>
      _localizedValues[key] ?? '** $key not found';

  static Locale get currentLocale => _locale;

  static String get currentLanguage => _locale.languageCode;

  static Future<I18n> load(Locale locale) async {
    final translations = I18n(locale);
    _localizedValues = _allValues[locale.toString()]!;
    return translations;
  }
}

class I18nDelegate extends LocalizationsDelegate<I18n> {
  const I18nDelegate();

  static final Set<Locale> supportedLocals = {
    Locale('en'),
    Locale('ru'),
  };

  @override
  bool isSupported(Locale locale) => supportedLocals.contains(locale);

  @override
  Future<I18n> load(Locale locale) => I18n.load(locale);

  @override
  bool shouldReload(I18nDelegate old) => false;
}
