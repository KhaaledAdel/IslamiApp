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
    return isLight()
        ? "assets/images/home_layout_bg_dark.png"
        : "assets/images/home_layout_bg_light.png";
  }

  String splashScreenImage() {
    return isLight()
        ? "assets/images/splash_screen_background.png"
        : "assets/images/splash_screen_background_dark.png";
  }
}
