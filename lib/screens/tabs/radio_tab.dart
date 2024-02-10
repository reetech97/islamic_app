

import 'package:flutter/material.dart';
import 'package:islami_app/constants/app_theme.dart';

class RadioTab extends StatefulWidget {
  const RadioTab({Key? key}) : super(key: key);

  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/radio_image.png"),
        const SizedBox(height: 16,),
        Text(
          "إذاعة القرآن الكريم",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 16,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(
                Icons.skip_previous,
                color: primaryLight,
              ),
              onPressed: () {

              },
            ),
            IconButton(
              icon: Icon(
                Icons.play_arrow,
                color: primaryLight,
              ),
              iconSize: 50,
              onPressed: () {

              },
            ),
            IconButton(
              icon: Icon(
                Icons.skip_next,
                color: primaryLight,
              ),
              onPressed: () {

              },
            ),
          ],
        )
      ],
    );
  }
}
