import 'package:flutter/material.dart';

class QuranItem extends StatelessWidget {
  final String suraName;
  final String suraNumber;

  const QuranItem(
      {super.key, required this.suraName, required this.suraNumber});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
          child: Text(suraNumber,
              style: theme.textTheme.bodyMedium, textAlign: TextAlign.center),
        ),
        Container(
          width: 4,
          height: 50,
          color: theme.colorScheme.onSecondaryContainer,
        ),
        Expanded(
          child: Text(
            suraName,
            style: theme.textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
