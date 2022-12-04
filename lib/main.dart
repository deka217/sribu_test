// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sribu_test/pages/detail_movie.dart';
import 'package:sribu_test/pages/home/home_pagee.dart';
// import 'package:sribu_test/pages/detail_movie.dart';
import 'package:sribu_test/pages/home/main_page.dart';
import 'package:sribu_test/pages/splash_page.dart';
import 'package:sribu_test/provider/movie_provider.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MovieProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          // ignore: prefer_const_constructors
          '/': (context) => SplashPage(),
          // ignore: prefer_const_constructors
          '/home': (context) => MainPage(),
          '/movie': (context) => DetailMovie(),
          // ignore: prefer_const_constructors
          '/homee': (context) => HomePagee()
        },
      ),
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
