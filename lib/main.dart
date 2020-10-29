import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nuntium/components/buttons.dart';
import 'package:nuntium/themes.dart';

void main() => runApp(Application());

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'nuntius',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: Platform.isAndroid || Platform.isIOS ? oledTheme : darkTheme,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 60.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SvgPicture.asset(
                    'assets/images/logo.svg',
                  color: Theme.of(context).accentColor,
                ),
              ),
            ),
            Form(
              child: Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    cursorColor: Theme.of(context).accentColor,
                    decoration: InputDecoration(
                      hintText: 'e-mail address',
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 28.0, vertical: 18.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 18.0,
                  ),
                  TextField(
                    obscureText: true,
                    textInputAction: TextInputAction.done,
                    cursorColor: Theme.of(context).accentColor,
                    decoration: InputDecoration(
                      hintText: 'password',
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 28.0, vertical: 18.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50.0,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Text(
                        'Hmm... These are wrong.',
                        style: TextStyle(
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ),
                  NRoundedButton(
                    value: 'Sign in',
                    onPressed: () {
                      print('hi there');
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NTextButton(
                  onPressed: () {
                    print('hello');
                  },
                  value: 'Create an account?',
                  color: Color(0xFF808080),
                ),
                NTextButton(
                  onPressed: () {
                    print('hello');
                  },
                  value: 'Forgot password?',
                  color: Color(0xFF808080),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
