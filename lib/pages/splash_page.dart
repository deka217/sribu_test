// import 'dart:async';

// ignore_for_file: dead_code

import 'dart:async';
// import 'dart:ffi';

import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:shamo/providers/product_provider.dart';
import 'package:sribu_test/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Type initState() {
    // ignore: todo
    // TODO: implement initState
    Timer(
      const Duration(seconds: 10),
      () => Navigator.pushNamed(context, '/home'),
    );
    return Timer;

    super.initState();

    // newMethod();
  }

  // Never newMethod() => throw 'initState';

  // String get newMethod => "";
//   _SplashPageState createState() => _SplashPageState();
// }

// class _SplashPageState extends State<SplashPage> {
//   @override
//   void initState() {
  // ignore: todo
//     // TODO: implement initState

//     getInit();

//     super.initState();
//   }

//   getInit() async {
//     await Provider.of<ProductProvider>(context, listen: false).getProducts();
//     Navigator.pushNamed(context, '/sign-in');
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: Container(
          width: 130,
          height: 150,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/logo.png',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
