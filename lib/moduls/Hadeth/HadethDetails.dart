import 'package:flutter/material.dart';
import 'package:islami_app/moduls/Hadeth/HadethView.dart';

class HadethDetails extends StatefulWidget {
  static const String routeName = "HadethDetails";

  HadethDetails({super.key});

  @override
  State<HadethDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<HadethDetails> {
  String content = "";
  List<String> allVerses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethContent;
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);

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
              Text(args.text, style: theme.textTheme.bodyLarge),
              Divider(
                color: theme.primaryColor,
                thickness: 2,
                indent: 20,
                endIndent: 40,
              ),
              SingleChildScrollView(),
              Expanded(
                child: Text(args.content, style: theme.textTheme.bodySmall),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
