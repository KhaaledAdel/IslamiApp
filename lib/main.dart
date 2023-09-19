import 'package:flutter/material.dart';
import 'package:islami_app/core/theme/application%20theme.dart';
import 'package:islami_app/layout/home_layout.dart';
import 'package:islami_app/moduls/Quran/QuranDetails.dart';
import 'package:islami_app/moduls/splash%20screen/SplashScreen.dart';

import 'moduls/Hadeth/HadethDetails.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: applicationtheme.lightTheme,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeLayout.routeName: (context) => HomeLayout(),
        QuranDetails.routeName: (context) => QuranDetails(),
        HadethDetails.routeName: (context) => HadethDetails(),
      },
    );
  }
}
