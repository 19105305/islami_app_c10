import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/modules/hadeth/page/hadeth_view.dart';
import 'package:islami_app/modules/quran/page/quran_view.dart';
import 'package:islami_app/modules/radio/page/radio_view.dart';
import 'package:islami_app/modules/settings/page/settings_view.dart';
import 'package:islami_app/modules/tasbeh/page/tasbeh_view.dart';

class LayoutView extends StatefulWidget {
  static const String routename = "layout";

  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int currentIndex = 0;
  List<Widget> screens = [
    QuranView(),
    HadethView(),
    TasbehView(),
    RadioView(),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/main_background.png"),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
        appBar: AppBar(
          title: Text("اسلامي"),
        ),
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              currentIndex = index;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/quran_icn.png")),
                  label: "Quran"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/hadeth_icn.png")),
                  label: "Hadeth"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/sebha_icn.png")),
                  label: "Tasbeh"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/radio_icn.png")),
                  label: "Radio"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Settings"),
            ]),
      ),
    );
  }
}
