import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/core/theme/application%20theme.dart';
import 'package:islami_app/layout/home_layout.dart';
import 'package:islami_app/moduls/Quran/QuranDetails.dart';
import 'package:islami_app/moduls/splash%20screen/SplashScreen.dart';
import 'package:provider/provider.dart';

import 'core/provider/appProvider.dart';
import 'moduls/Hadeth/HadethDetails.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AppProvider(),
      child: MyApplication(),
    ),
  );
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeLayout.routeName: (context) => HomeLayout(),
        QuranDetails.routeName: (context) => QuranDetails(),
        HadethDetails.routeName: (context) => HadethDetails(),
      },
      theme: applicationtheme.lightTheme,
      darkTheme: applicationtheme.darkTheme,
      themeMode: appProvider.currentTheme,
      locale: Locale(appProvider.currentLocal),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
