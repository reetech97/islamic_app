

import 'package:flutter/material.dart';
import 'package:islami_app/models/hadeth.dart';
import 'package:islami_app/screens/widgets/content_card.dart';



class HadethScreen extends StatefulWidget {
  final Hadeth hadeth;
  const HadethScreen({required this.hadeth, Key? key}) : super(key: key);

  @override
  State<HadethScreen> createState() => _HadethScreenState();
}

class _HadethScreenState extends State<HadethScreen> {



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
            child: ContentCard(title: widget.hadeth.title, content: widget.hadeth.body),
          ),
        ),
      ),
    );
  }
}
