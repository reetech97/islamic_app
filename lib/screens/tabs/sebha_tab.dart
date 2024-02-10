

import 'package:flutter/material.dart';
import 'package:islami_app/constants/app_theme.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({Key? key}) : super(key: key);

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {

  int azkarIdx = 0;
  int azkarCount = 0;
  final azkarList = [
    "سبحان الله",
    "الحمد لله",
    "الله أكبر",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 64),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                child: Image.asset("assets/images/head_sebha_logo.png"),
                top: -75,
                left: 100,
              ),
              Image.asset("assets/images/body_sebha_logo.png"),
            ],
          ),
        ),
        const SizedBox(height: 16,),
        Text(
          "عدد التسبيحات",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 8,),
        Card(
          elevation: 0,
          color: primaryLight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "$azkarCount",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ),
        const SizedBox(height: 8,),
        ElevatedButton(
          child: Text(azkarList[azkarIdx]),
          onPressed: () {
            if(azkarCount == 33) {
              azkarIdx = (azkarIdx + 1) % 3;
              azkarCount = 0;
            }
            else {
              azkarCount++;
            }
            setState(() {

            });
          },
        )
      ],
    );
  }
}
