// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `nuntium`
  String get app_name {
    return Intl.message(
      'nuntium',
      name: 'app_name',
      desc: '',
      args: [],
    );
  }

  /// `e-mail address`
  String get lbl_email {
    return Intl.message(
      'e-mail address',
      name: 'lbl_email',
      desc: '',
      args: [],
    );
  }

  /// `password`
  String get lbl_password {
    return Intl.message(
      'password',
      name: 'lbl_password',
      desc: '',
      args: [],
    );
  }

  /// `repeat password`
  String get lbl_passwordRepeat {
    return Intl.message(
      'repeat password',
      name: 'lbl_passwordRepeat',
      desc: '',
      args: [],
    );
  }

  /// `sign up`
  String get lbl_register {
    return Intl.message(
      'sign up',
      name: 'lbl_register',
      desc: '',
      args: [],
    );
  }

  /// `sign in`
  String get lbl_login {
    return Intl.message(
      'sign in',
      name: 'lbl_login',
      desc: '',
      args: [],
    );
  }

  /// `reset`
  String get lbl_forgot {
    return Intl.message(
      'reset',
      name: 'lbl_forgot',
      desc: '',
      args: [],
    );
  }

  /// `Create account?`
  String get btn_createAccount {
    return Intl.message(
      'Create account?',
      name: 'btn_createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Already registered?`
  String get btn_returningUser {
    return Intl.message(
      'Already registered?',
      name: 'btn_returningUser',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password?`
  String get btn_forgotPassword {
    return Intl.message(
      'Forgot password?',
      name: 'btn_forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Something went horribly wrong!`
  String get err_serverError {
    return Intl.message(
      'Something went horribly wrong!',
      name: 'err_serverError',
      desc: '',
      args: [],
    );
  }

  /// `E-mail address is required!`
  String get err_emptyEmail {
    return Intl.message(
      'E-mail address is required!',
      name: 'err_emptyEmail',
      desc: '',
      args: [],
    );
  }

  /// `E-mail address is invalid!`
  String get err_invalidEmail {
    return Intl.message(
      'E-mail address is invalid!',
      name: 'err_invalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Password is required!`
  String get err_emptyPassword {
    return Intl.message(
      'Password is required!',
      name: 'err_emptyPassword',
      desc: '',
      args: [],
    );
  }

  /// `Password too easy to guess!`
  String get err_stupidPassword {
    return Intl.message(
      'Password too easy to guess!',
      name: 'err_stupidPassword',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en', countryCode: 'US'),
      Locale.fromSubtags(languageCode: 'nl', countryCode: 'BE'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}