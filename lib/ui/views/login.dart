import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nuntium/core/viewmodels/login.dart';
import 'package:nuntium/generated/l10n.dart';
import 'package:nuntium/ui/widgets/buttons.dart' as Buttons;

final _loginViewModel = StateNotifierProvider<LoginViewModel>((ref) {
  return LoginViewModel();
});

class LoginLayout {
  bool showPasswordField;
  bool showPasswordRepeatField;
  String buttonLabel;
  Buttons.TextButton leftButton;
  Buttons.TextButton rightButton;

  LoginLayout(BuildContext context, LoginFormState formState) {
    switch (formState) {
      case LoginFormState.login:
        this.showPasswordField = true;
        this.showPasswordRepeatField = false;
        this.buttonLabel = S.of(context).lbl_login;
        this.leftButton = _createTextButton(
          S.of(context).btn_createAccount,
          () {
            context.read(_loginViewModel).setFormState(LoginFormState.register);
          },
        );
        this.rightButton = _createTextButton(
          S.of(context).btn_forgotPassword,
          () {
            context.read(_loginViewModel).setFormState(LoginFormState.forgot);
          },
        );
        break;
      case LoginFormState.register:
        this.showPasswordField = true;
        this.showPasswordRepeatField = true;
        this.buttonLabel = S.of(context).lbl_register;
        this.leftButton = _createTextButton(
          S.of(context).btn_returningUser,
          () {
            context.read(_loginViewModel).setFormState(LoginFormState.login);
          },
        );
        this.rightButton = _createTextButton(
          S.of(context).btn_forgotPassword,
          () {
            context.read(_loginViewModel).setFormState(LoginFormState.forgot);
          },
        );
        break;
      case LoginFormState.forgot:
        this.showPasswordField = false;
        this.showPasswordRepeatField = false;
        this.buttonLabel = S.of(context).lbl_forgot;
        this.leftButton = _createTextButton(
          S.of(context).btn_createAccount,
          () {
            context.read(_loginViewModel).setFormState(LoginFormState.register);
          },
        );
        this.rightButton = _createTextButton(
          S.of(context).btn_returningUser,
          () {
            context.read(_loginViewModel).setFormState(LoginFormState.login);
          },
        );
        break;
    }
  }

  Buttons.TextButton _createTextButton(String label, Function action) {
    return Buttons.TextButton(
      onPressed: action,
      value: label,
      color: Color(0xFF808080),
    );
  }
}

class LoginView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final loginState = watch(_loginViewModel.state);
    final loginLayout = LoginLayout(context, loginState.formState);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 50.0,
          vertical: 10.0,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: SvgPicture.asset(
                      'assets/images/logo.svg',
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  Text(
                    S.of(context).app_name,
                    //   S.of(context).app_name,
                    style: TextStyle(
                      fontSize: 21.0,
                      fontFamily: 'Rubik',
                    ),
                  ),
                  const SizedBox(
                    width: 35.0,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Divider(
                color: Color(0xFF808080),
                indent: MediaQuery.of(context).size.width / 2 - 135,
                endIndent: MediaQuery.of(context).size.width / 2 - 135,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).viewInsets.bottom == 0 ? 100.0 : 10.0,
            ),
            Form(
              child: Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: loginLayout.showPasswordField ? TextInputAction.next : TextInputAction.done,
                    cursorColor: Theme.of(context).accentColor,
                    decoration: InputDecoration(
                      hintText: S.of(context).lbl_email,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 28.0,
                        vertical: 18.0,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                    ),
                  ),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    height: loginLayout.showPasswordField ? 73.0 : 0.0,
                    child: SingleChildScrollView(
                      physics: NeverScrollableScrollPhysics(),
                      child: Column(
                        children: [
                          const SizedBox(
                            width: double.infinity,
                            height: 18.0,
                          ),
                          TextField(
                            obscureText: true,
                            textInputAction: loginLayout.showPasswordRepeatField ? TextInputAction.next : TextInputAction.done,
                            cursorColor: Theme.of(context).accentColor,
                            decoration: InputDecoration(
                              hintText: S.of(context).lbl_password,
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 28.0,
                                vertical: 18.0,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    height: loginLayout.showPasswordRepeatField ? 73.0 : 0.0,
                    child: SingleChildScrollView(
                      physics: NeverScrollableScrollPhysics(),
                      child: Column(
                        children: [
                          const SizedBox(
                            width: double.infinity,
                            height: 18.0,
                          ),
                          TextField(
                            obscureText: true,
                            textInputAction: TextInputAction.done,
                            cursorColor: Theme.of(context).accentColor,
                            decoration: InputDecoration(
                              hintText: S.of(context).lbl_passwordRepeat,
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 28.0,
                                vertical: 18.0,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50.0,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Text(
                        loginState.error,
                        style: TextStyle(
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ),
                  if (MediaQuery.of(context).viewInsets.bottom == 0)
                    Buttons.RoundedButton(
                      value: loginLayout.buttonLabel,
                      onPressed: () {
                        print('hi there');
                      },
                    ),
                ],
              ),
            ),
            if (MediaQuery.of(context).viewInsets.bottom == 0)
              Padding(
                padding: const EdgeInsets.only(
                  top: 15.0,
                  bottom: 50.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    loginLayout.leftButton,
                    loginLayout.rightButton,
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
