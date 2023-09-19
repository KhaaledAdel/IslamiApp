import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/moduls/Hadeth/HadethDetails.dart';

class HadethView extends StatefulWidget {
  HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  List<HadethContent> allhadethcontent = [];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    if (allhadethcontent.isEmpty) readfiles();
    return Column(
      children: [
        Image.asset("assets/images/ahadeth_image.png"),
        Divider(
          thickness: 2,
          endIndent: 3,
          indent: 3,
          color: theme.primaryColor,
          height: 13,
        ),
        Text("الأحاديث", style: theme.textTheme.bodyMedium),
        Divider(
          thickness: 2,
          endIndent: 3,
          indent: 3,
          color: theme.primaryColor,
          height: 15,
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, HadethDetails.routeName,
                    arguments: HadethContent(
                        text: allhadethcontent[index].text,
                        content: allhadethcontent[index].content));
              },
              child: Text(
                allhadethcontent[index].text,
                style: theme.textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
            ),
            itemCount: allhadethcontent.length,
            separatorBuilder: (context, index) => Divider(
              color: Color(0xffE3E2E3FF),
              height: 30,
            ),
          ),
        ),
      ],
    );
  }

  readfiles() async {
    String text = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allhadeth = text.split("#");
    for (int i = 0; i < allhadeth.length; i++) {
      String singlehadeth = allhadeth[i].trim();
      int indexofFirstline = singlehadeth.indexOf("\n");
      String text = singlehadeth.substring(0, indexofFirstline);
      String content = singlehadeth.substring(indexofFirstline + 1);
      HadethContent hadethContent = HadethContent(text: text, content: content);
      allhadethcontent.add(hadethContent);
      setState(() {});

      print(text);
    }
  }
}

class HadethContent {
  final String text;
  final String content;

  HadethContent({required this.text, required this.content});
}
