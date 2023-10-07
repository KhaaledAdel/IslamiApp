import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/moduls/Hadeth/HadethView.dart';
import 'package:provider/provider.dart';

import '../../core/provider/appProvider.dart';

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
              Text(
                args.text,
                style: theme.textTheme.bodyLarge!
                    .copyWith(color: theme.colorScheme.onSecondaryContainer),
              ),
              Divider(
                color: theme.colorScheme.onSecondaryContainer,
                thickness: 2,
                indent: 20,
                endIndent: 40,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) => Text(
                    args.content,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
