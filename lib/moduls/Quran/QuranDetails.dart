import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/moduls/Quran/QuranView.dart';
import 'package:provider/provider.dart';

import '../../core/provider/appProvider.dart';

class QuranDetails extends StatefulWidget {
  static const String routeName = "QuranDetails";

  QuranDetails({super.key});

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  String content = "";
  List<String> allVerses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetails;

    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    if (content.isEmpty) readfiles(args.SuraNumber);
    var appProvider = Provider.of<AppProvider>(context);
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                appProvider.backgroundImage(),
              ),
              fit: BoxFit.cover),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.islami),
          ),
          body: Container(
            width: mediaQuery.width,
            height: mediaQuery.height,
            margin: EdgeInsets.only(left: 30, right: 30, top: 33, bottom: 120),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 35),
            decoration: BoxDecoration(
              color: theme.colorScheme.onPrimaryContainer.withOpacity(0.8),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      args.SuraName,
                      style: theme.textTheme.titleLarge!.copyWith(
                          color: theme.colorScheme.onSecondaryContainer),
                    ),
                    SizedBox(width: 15),
                    Icon(Icons.play_circle,
                        size: 35,
                        color: theme.colorScheme.onSecondaryContainer),
                  ],
                ),
                Divider(
                  color: theme.colorScheme.onSecondaryContainer,
                  thickness: 3,
                  indent: 20,
                  endIndent: 40,
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) => Text(
                      "(${index + 1})  ${allVerses[index]} ",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyMedium,
                    ),
                    itemCount: allVerses.length,
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  readfiles(String index) async {
    String text = await rootBundle.loadString("assets/files/$index.txt");
    content = text;

    setState(() {
      allVerses = content.split("\n");
    });
    print(text);
  }
}
