import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  String currentLocal = "en";
  ThemeMode currentTheme = ThemeMode.light;

  changeLanguage(String newLanguage) {
    if (currentLocal == newLanguage) return;
    currentLocal = newLanguage;
    notifyListeners();
  }

  bool isEnglish() {
    return currentLocal == "en";
  }

  changeTheme(ThemeMode newTheme) {
    if (newTheme == currentTheme) return;
    currentTheme = newTheme;
    notifyListeners();
  }

  bool isLight() {
    return currentTheme == ThemeMode.light;
  }

  String backgroundImage() {
    return isLight() ? "assets/images/bg3.png" : "assets/images/bg.png";
  }

  String splashScreenImage() {
    return isLight()
        ? "assets/images/SplashScreen.JPEG"
        : "assets/images/SplashScreen dark.JPEG";
  }
}
