import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nuntium/components/buttons.dart';
import 'package:nuntium/screens/loginpage.dart';
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
