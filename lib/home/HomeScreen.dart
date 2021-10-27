import 'package:flutter/material.dart';
import 'package:islami_sun/home/hadeth/HadtehTab.dart';
import 'package:islami_sun/home/quran/QuranTab.dart';
import 'package:islami_sun/home/radio/RadioTab.dart';
import 'package:islami_sun/home/tasbeh/TasbehTab.dart';
import 'package:islami_sun/main.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/main_background.png',
          fit: BoxFit.fill,
          width: double.infinity,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text('اسلامي'),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: MyThemeData.primaryColor),
            child: BottomNavigationBar(
              currentIndex: currentPage,
              onTap: (index) {
                currentPage = index;
                setState(() {});
              },
              backgroundColor: MyThemeData.primaryColor,
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/ic_quran.png')),
                    label: 'قران'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/ic_hadeth.png')),
                    label: 'hadeth'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/ic_sebha.png')),
                    label: 'Tasbeh'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/ic_radio.png')),
                    label: 'Radio'),
              ],
            ),
          ),
          body: Container(
            child: views[currentPage],
          ),
        ),
      ],
    );
  }

  void testFunction() {}

  List<Widget> views = [QuranTab(), HadethTab(), TasbehTab(), RadioTab()];
}
