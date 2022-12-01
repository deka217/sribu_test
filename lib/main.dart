// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:sribu_test/pages/home/main_page.dart';
import 'package:sribu_test/pages/splash_page.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        // ignore: prefer_const_constructors
        '/': (context) => SplashPage(),
        // ignore: prefer_const_constructors
        '/home': (context) => MainPage(),
      },
    );
  }
}

// ignore: use_key_in_widget_constructors
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Image.asset(
//         'assets/logo.png',
//       ),
//     );
//   }
// }
