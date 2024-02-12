import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/config/settings_provider.dart';
import 'package:islami_app/modules/hadeth/page/hadeth_view.dart';
import 'package:islami_app/modules/quran/page/quran_view.dart';
import 'package:islami_app/modules/radio/page/radio_view.dart';
import 'package:islami_app/modules/settings/page/settings_view.dart';
import 'package:islami_app/modules/tasbeh/page/tasbeh_view.dart';
import 'package:provider/provider.dart';

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
    var lang = AppLocalizations.of(context)!;
    var vm = Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          vm.getBackground(),
        ),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
        appBar: AppBar(
          title: Text(lang.islami),
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
                  label: lang.quran),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/hadeth_icn.png")),
                  label: lang.hadeth),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/sebha_icn.png")),
                  label: lang.tasbeh),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/radio_icn.png")),
                  label: lang.radio),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: lang.settings),
            ]),
      ),
    );
  }
}
