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
        Text("إذاعة القرآن الكريم"),
        SizedBox(height: 50),
        Row(
          children: [
            SizedBox(width: 50),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_circle_left,
                  size: 65, color: theme.primaryColor),
            ),
            SizedBox(width: 60),
            IconButton(
              onPressed: () {},
              icon:
                  Icon(Icons.play_circle, size: 65, color: theme.primaryColor),
            ),
            SizedBox(width: 70),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_circle_right,
                  size: 65, color: theme.primaryColor),
            ),
          ],
        ),
      ],
    );
  }
}
