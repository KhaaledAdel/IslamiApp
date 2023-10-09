import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../core/provider/appProvider.dart';
import 'Widgets/language_bottom.dart';
import 'Widgets/settings_item.dart';
import 'Widgets/theme_mode_bottom.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    var local = AppLocalizations.of(context)!;
    var appProvider = Provider.of<AppProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 80),
      child: Column(
        children: [
          SettingsItem(
            settingsOptionTitle: local.language,
            settingsOptionSelected:
                appProvider.isEnglish() ? local.english : local.arabic,
            onOptionTab: () {
              showLanguageBottomSheet(context);
            },
          ),
          const SizedBox(height: 30),
          SettingsItem(
            settingsOptionTitle: local.themeMode,
            settingsOptionSelected:
                appProvider.isLight() ? local.lightMode : local.darkMode,
            onOptionTab: () {
              showThemeBottomSheet(context);
            },
          ),
        ],
      ),
    );
  }

  void showLanguageBottomSheet(context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => const LanguageBottomSheet(),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(40))),
    );
  }

  void showThemeBottomSheet(context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => const ThemeModeBottomSheet(),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(40))),
    );
  }
}
