import 'package:flutter/material.dart';
import 'package:islamy/ahadethfragment.dart';
import 'package:islamy/quran_fragment.dart';
import 'package:islamy/radiofragment.dart';
import 'package:islamy/sebhafragment.dart';
import 'package:islamy/settingsfragment.dart';

class HomeScreen extends StatefulWidget {
  static String route_name = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/default_bg.png'))),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: const Center(
              child: Text(
                'إسلامي',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.black),
              ),
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(canvasColor: const Color(0xffb7935f)),
            child: BottomNavigationBar(
              onTap: (index) {
                currentindex = index;
                setState(() {});
              },
              selectedItemColor: const Color(0xff242424),
              showUnselectedLabels: true,
              currentIndex: currentindex,
              items: const [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),
                    label: 'قرآن كريم'),
                BottomNavigationBarItem(
                    icon:
                        ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
                    label: 'حديث شريف'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_radio.png')),
                    label: 'راديو'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),
                    label: 'تسبيح'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: 'الإعدادات')
              ],
            ),
          ),
          body: getBody(),
        ));
  }

  Widget getBody() {
    if (currentindex == 0) {
      return QuranFragment();
    } else if (currentindex == 1) {
      return AhadethFragment();
    } else if (currentindex == 2) {
      return RadioFragment();
    } else if (currentindex == 3) {
      return SebhaFragment();
    } else {
      return SettingsFragment();
    }
  }
}
