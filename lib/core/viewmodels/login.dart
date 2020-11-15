import 'package:flutter_riverpod/all.dart';
import 'package:nuntium/core/services/auth/auth.dart';
import 'package:nuntium/core/services/locator.dart';

enum LoginFormState { login, register, forgot }

class LoginState {
  final String email;
  final String error;
  final LoginFormState formState;

  LoginState({
    this.email = "",
    this.error = "",
    this.formState = LoginFormState.login,
  });

  factory LoginState.clone(LoginState state, {String email, String error, LoginFormState formState}) => LoginState(
        email: email ?? state.email,
        error: error ?? state.error,
        formState: formState ?? state.formState,
      );
}

class LoginViewModel extends StateNotifier<LoginState> {
  final AuthService authService = serviceLocator<AuthService>();

  LoginViewModel([LoginState loginState]) : super(loginState ?? LoginState());

  void setFormState(LoginFormState formState) {
    state = LoginState.clone(state, formState: formState);
  }
}
