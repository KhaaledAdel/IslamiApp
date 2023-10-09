import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/provider/appProvider.dart';

class TasbehView extends StatefulWidget {
  const TasbehView({Key? key}) : super(key: key);

  @override
  State<TasbehView> createState() => TasbehScreenState();
}

class TasbehScreenState extends State<TasbehView> {
  int counter = 0;
  int currentIndex = 0;
  List<String> zekrList = ["سبحان الله", "الحمدلله", "الله أكبر"];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var appProvider = Provider.of<AppProvider>(context);

    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 30, left: 40),
                  child: Image.asset(
                    appProvider.isLight()
                        ? "assets/images/head_sebha_logo.png"
                        : "assets/images/head_sebha_dark.png",
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 105),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        counter++;
                        if (counter >= 33) {
                          currentIndex = (currentIndex + 1) % zekrList.length;
                          counter = 0;
                        }
                      });
                    },
                    child: Transform.rotate(
                      angle: counter * (360 / 4) * (3.1415926535897932 / 180),
                      child: Image.asset(
                        appProvider.isLight()
                            ? "assets/images/body_sebha_white.png"
                            : "assets/images/body_sebha_dark.png",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            "عدد التسبيحات",
            style: theme.textTheme.titleMedium!.copyWith(
              color: theme.colorScheme.outline,
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 80,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: theme.primaryColor.withOpacity(0.57),
                ),
              ),
              Text("$counter"),
            ],
          ),
          const SizedBox(height: 15),
          GestureDetector(
            onTap: () {
              setState(() {
                counter++;
                if (counter >= 33) {
                  currentIndex = (currentIndex + 1) % zekrList.length;
                  counter = 0;
                }
              });
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 180,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: theme.colorScheme.onSecondaryContainer,
                  ),
                ),
                Text(
                  zekrList[currentIndex],
                  style: theme.textTheme.labelMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
