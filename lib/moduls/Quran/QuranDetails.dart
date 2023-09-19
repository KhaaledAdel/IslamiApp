import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/moduls/Quran/QuranView.dart';

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
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text("إسلامي"),
          ),
          body: Container(
            width: mediaQuery.width,
            height: mediaQuery.height,
            margin: EdgeInsets.only(left: 30, right: 30, top: 33, bottom: 120),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 35),
            decoration: BoxDecoration(
              color: Color(0xffF8F8F8).withOpacity(0.8),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(args.SuraName, style: theme.textTheme.bodyLarge),
                    SizedBox(width: 30),
                    Icon(Icons.play_circle, size: 36, color: Colors.black),
                  ],
                ),
                Divider(
                  color: theme.primaryColor,
                  thickness: 2,
                  indent: 20,
                  endIndent: 40,
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) => Text(content,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodySmall),
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
