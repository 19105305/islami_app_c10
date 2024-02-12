import 'package:flutter/material.dart';
import 'package:islami_app/config/settings_provider.dart';
import 'package:provider/provider.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var vm = Provider.of<SettingsProvider>(context);
    return Container(
      height: mediaQuery.height,
      width: mediaQuery.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/radio.png"),
          SizedBox(
            height: 35,
          ),
          Text(
            "اذاعة القران الكريم",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: "El Messiri",
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: vm.isDark() ? Colors.white : Colors.black),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.skip_previous),
                  iconSize: 50,
                  color: vm.isDark() ? Color(0xFFFACC1D) : theme.primaryColor),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.play_arrow),
                iconSize: 50,
                color: vm.isDark() ? Color(0xFFFACC1D) : theme.primaryColor,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.skip_next),
                  iconSize: 50,
                  color: vm.isDark() ? Color(0xFFFACC1D) : theme.primaryColor),
            ],
          ),
        ],
      ),
    );
  }
}
