import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:nuntium/services/locator.dart';
import 'package:nuntium/ui/views/home.dart';
import 'package:nuntium/ui/views/login.dart';
import 'package:nuntium/config/themes.dart';

void main() {
  setupServiceLocator();
  runApp(Nuntium());
}

class Nuntium extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'nuntium',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: Platform.isAndroid || Platform.isIOS ? oledTheme : darkTheme,
      initialRoute: 'login',
      routes: {
        'home': (context) => HomeView(),
        'login': (context) => LoginView(),
      },
    );
  }
}
