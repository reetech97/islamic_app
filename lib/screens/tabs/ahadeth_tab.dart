

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/models/hadeth.dart';
import 'package:islami_app/screens/hadeth_screen.dart';

import '../../constants/app_theme.dart';

class AhadethTab extends StatefulWidget {
  const AhadethTab({Key? key}) : super(key: key);

  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {

  Future<List<Hadeth>> loadAhadethList() async {

    String ahadethText = await rootBundle.loadString("assets/ahadeth.txt");
    List<String> ahadethTextList = ahadethText.trim().split("#")..removeLast();
    List<Hadeth> ahadethList = [];
    for (var item in ahadethTextList) {
      String cleanText = item.trim();
      int br1Idx = cleanText.indexOf("\n");
      ahadethList.add(
          Hadeth(
              title: cleanText.substring(0, br1Idx),
              body: cleanText.substring(br1Idx).trim()
          )
      );
    }

    return ahadethList;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: Image.asset(
            "assets/images/hadeth_logo.png",
            height: MediaQuery.of(context).size.height * 0.25,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: const BoxDecoration(
              border: Border.symmetric(
                  horizontal: BorderSide(
                    color: primaryLight,
                    width: 2,
                  )
              )
          ),
          child: Text(
            "الأحاديث",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
            ),
          ),
        ),
        Expanded(
          child: FutureBuilder(
            future: loadAhadethList(),
            builder: (context, snapshot) {
              if(!snapshot.hasData) return const Center(child: CircularProgressIndicator(),);

              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(

                  children: [
                    for (var hadeth in snapshot.data!)
                      InkWell(
                        child: Text(hadeth.title,
                          textAlign: TextAlign.center,
                        ),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HadethScreen(hadeth: hadeth),));
                        },
                      )
                  ],
                ),
              );
            }
          ),
        )
      ],
    );
  }
}
