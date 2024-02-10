
import 'package:flutter/material.dart';
import 'package:islami_app/screens/tabs/ahadeth_tab.dart';
import 'package:islami_app/screens/tabs/quran_tab.dart';
import 'package:islami_app/screens/tabs/radio_tab.dart';
import 'package:islami_app/screens/tabs/sebha_tab.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    RadioTab(),
    SebhaTab(),
    AhadethTab(),
    QuranTab(),
    Text(
      'Index 4: School',
      style: optionStyle,
    ),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
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
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/icon_radio.png")),
              label: 'المذياع',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/icon_sebha.png",)),
              label: 'المسبحة',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png",)),
              label: 'الأحاديث',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/icon_quran.png",)),
              label: 'القرآن',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'الإعدادات',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
