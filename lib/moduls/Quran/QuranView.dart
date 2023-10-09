import 'package:flutter/material.dart';
import 'package:islami_app/moduls/Quran/QuranDetails.dart';
import 'package:islami_app/moduls/Quran/Widget/QuranItem.dart';

class QuranView extends StatelessWidget {
  QuranView({super.key});

  List<String> SuraName = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Image.asset("assets/images/quran_image.png"),
        Divider(
          thickness: 3,
          height: 3,
          color: theme.colorScheme.onSecondaryContainer,
        ),
        Row(
          children: [
            Expanded(
              child: Text("رقم السورة",
                  style: theme.textTheme.bodyMedium,
                  textAlign: TextAlign.center),
            ),
            Container(
              width: 3,
              height: 70,
              color: theme.colorScheme.onSecondaryContainer,
            ),
            Expanded(
              child: Text(
                "اسم السورة",
                style: theme.textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        Divider(
          thickness: 3,
          height: 1,
          color: theme.colorScheme.onSecondaryContainer,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, QuranDetails.routeName,
                    arguments: SuraDetails(
                        SuraName: SuraName[index], SuraNumber: "${index + 1}"));
              },
              child: QuranItem(
                suraName: SuraName[index],
                suraNumber: "${index + 1}",
              ),
            ),
            itemCount: SuraName.length,
          ),
        ),
      ],
    );
  }
}

class SuraDetails {
  final String SuraName;
  final String SuraNumber;

  SuraDetails({required this.SuraName, required this.SuraNumber});
}
