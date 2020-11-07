import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nuntium/components/buttons.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 50.0,
          vertical: 10.0,
        ),
        child: Column(
          children: [
            SizedBox(
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
                    'nuntium',
                    style: TextStyle(
                      fontSize: 21.0,
                      fontFamily: 'Rubik',
                    ),
                  ),
                  SizedBox(
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
              height:
                  MediaQuery.of(context).viewInsets.bottom == 0 ? 100.0 : 10.0,
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
                        horizontal: 28.0,
                        vertical: 18.0,
                      ),
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
                        horizontal: 28.0,
                        vertical: 18.0,
                      ),
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
                  if (MediaQuery.of(context).viewInsets.bottom == 0)
                    NRoundedButton(
                      value: 'Sign in',
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
              ),
          ],
        ),
      ),
    );
  }
}
