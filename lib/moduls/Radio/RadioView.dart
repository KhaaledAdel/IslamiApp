import 'package:flutter/material.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(top: 150)),
        Image.asset("assets/images/radio_image.png"),
        SizedBox(height: 50),
        Text(
          "إذاعة القرآن الكريم",
          style: theme.textTheme.titleMedium!
              .copyWith(color: theme.colorScheme.outline),
        ),
        SizedBox(height: 50),
        Row(
          children: [
            SizedBox(width: 50),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_circle_left,
                  size: 65, color: theme.colorScheme.onSecondaryContainer),
            ),
            SizedBox(width: 60),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.play_circle,
                  size: 65, color: theme.colorScheme.onSecondaryContainer),
            ),
            SizedBox(width: 70),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_circle_right,
                  size: 65, color: theme.colorScheme.onSecondaryContainer),
            ),
          ],
        ),
      ],
    );
  }
}
