import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/moduls/Setting/Widgets/selected_option.dart';
import 'package:islami_app/moduls/Setting/Widgets/unselected_option.dart';
import 'package:provider/provider.dart';

import '../../../core/provider/appProvider.dart';

class ThemeModeBottomSheet extends StatelessWidget {
  const ThemeModeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var local = AppLocalizations.of(context)!;
    var appProvider = Provider.of<AppProvider>(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              appProvider.changeTheme(ThemeMode.light);
              Navigator.pop(context);
            },
            child: appProvider.isLight()
                ? SelectedOptionWidget(selectedTitle: local.lightMode)
                : UnselectedOptionWidget(unselectedTitle: local.lightMode),
          ),
          const SizedBox(height: 25),
          GestureDetector(
            onTap: () {
              appProvider.changeTheme(ThemeMode.dark);
              Navigator.pop(context);
            },
            child: appProvider.isLight()
                ? UnselectedOptionWidget(unselectedTitle: local.darkMode)
                : SelectedOptionWidget(selectedTitle: local.darkMode),
          ),
        ],
      ),
    );
  }
}
