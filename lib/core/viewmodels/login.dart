import 'package:flutter_riverpod/all.dart';
import 'package:nuntium/core/services/auth/auth.dart';
import 'package:nuntium/core/services/locator.dart';

class LoginState {
  final String email;
  final String error;

  LoginState({
    this.email = "",
    this.error = "",
  });
}

class LoginViewModel extends StateNotifier<LoginState> {
  final AuthService authService = serviceLocator<AuthService>();

  LoginViewModel([LoginState loginState]) : super(loginState ?? LoginState());
}
