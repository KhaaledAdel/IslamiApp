import 'package:flutter/material.dart';

typedef SettingsOptionClicked = void Function();

class SettingsItem extends StatelessWidget {
  final String settingsOptionTitle;
  final String settingsOptionSelected;
  final SettingsOptionClicked onOptionTab;

  const SettingsItem(
      {super.key,
      required this.settingsOptionTitle,
      required this.settingsOptionSelected,
      required this.onOptionTab});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          settingsOptionTitle,
          style: theme.textTheme.titleMedium,
          textAlign: TextAlign.start,
        ),
        GestureDetector(
          onTap: onOptionTab,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
            width: mediaQuery.width,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              border: Border.all(
                color: theme.colorScheme.onSecondaryContainer,
                width: 2.5,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  settingsOptionSelected,
                  style: theme.textTheme.titleMedium,
                ),
                Icon(
                  Icons.arrow_drop_down,
                  size: 30,
                  color: theme.colorScheme.onPrimary,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
