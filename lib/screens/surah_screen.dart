

import 'package:flutter/material.dart';
import 'package:islami_app/constants/data.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:islami_app/screens/widgets/content_card.dart';



class SurahScreen extends StatefulWidget {
  final int surahIdx;
  const SurahScreen({required this.surahIdx, Key? key}) : super(key: key);

  @override
  State<SurahScreen> createState() => _SurahScreenState();
}

class _SurahScreenState extends State<SurahScreen> {


  Future<String> readSurahText() async {

    String surahText = await rootBundle.loadString("assets/surah/${widget.surahIdx + 1}.txt");
    List<String> surahAyat = surahText.trim().split("\n");
    surahText = "";
    for (int i = 0; i < surahAyat.length; i++) {
      surahText += "${surahAyat[i]} (${i + 1}) ";
    }
    return surahText;
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/default_bg.png"),
            fit: BoxFit.cover,
            alignment: Alignment.topCenter
          )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('إسلامي'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 64),
            child: FutureBuilder(
                future: readSurahText(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) return const Center(child: CircularProgressIndicator(),);

                  return ContentCard(title: suraNames[widget.surahIdx], content: snapshot.data!, showPlayIcon: true,);
                }
            ),
          ),
        ),
      ),
    );
  }
}
