import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/moduls/Hadeth/HadethView.dart';
import 'package:islami_app/moduls/Quran/QuranView.dart';
import 'package:islami_app/moduls/Radio/RadioView.dart';
import 'package:islami_app/moduls/Setting/SettingView.dart';
import 'package:islami_app/moduls/Tasbeh/TasbehView.dart';
import 'package:provider/provider.dart';

import '../core/provider/appProvider.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = "Home_Layout";

  HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int SelectedIndex = 0;
  List<Widget> Screens = [
    QuranView(),
    HadethView(),
    TasbehView(),
    RadioView(),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              appProvider.backgroundImage(),
            ),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.islami),
        ),
        body: Screens[SelectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: SelectedIndex,
          onTap: (int index) {
            setState(() {
              SelectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/quran_icon.png"),
                ),
                label: AppLocalizations.of(context)!.quran),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/Group 6.png"),
                ),
                label: AppLocalizations.of(context)!.hadeth),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/sebha.png"),
                ),
                label: AppLocalizations.of(context)!.sebha),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/radio.png"),
                ),
                label: AppLocalizations.of(context)!.radio),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: AppLocalizations.of(context)!.settings),
          ],
        ),
      ),
    );
  }
}
