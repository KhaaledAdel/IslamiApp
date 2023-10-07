import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_app/layout/home_layout.dart';
import 'package:provider/provider.dart';

import '../../core/provider/appProvider.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = "Splash_Screen";

  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, HomeLayout.routeName);
      },
    );
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Image.asset(appProvider.splashScreenImage(),
          width: mediaQuery.width,
          height: mediaQuery.height,
          fit: BoxFit.cover),
    );
  }
}
