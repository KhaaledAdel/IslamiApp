import 'package:flutter/material.dart';
import 'package:islami_app/moduls/Hadeth/HadethView.dart';
import 'package:islami_app/moduls/Quran/QuranView.dart';
import 'package:islami_app/moduls/Radio/RadioView.dart';
import 'package:islami_app/moduls/Setting/SettingView.dart';
import 'package:islami_app/moduls/Tasbeh/TasbehView.dart';

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
    SettingView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(title: Text("إسلامي")),
        body: Screens[SelectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              SelectedIndex = index;
            });
          },
          currentIndex: SelectedIndex,
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/quran_icon.png")),
                label: "القرأن"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/Group 6.png")),
                label: "الأحاديث"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                label: "التسبيح"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/radio.png")),
                label: "الراديو"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "الإعدادت"),
          ],
        ),
      ),
    );
  }
}
