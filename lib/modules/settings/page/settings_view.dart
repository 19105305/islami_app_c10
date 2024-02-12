import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/config/settings_provider.dart';
import 'package:provider/provider.dart';

class SettingsView extends StatelessWidget {
  SettingsView({super.key});

  final List<String> themeList = [
    "Dark",
    "Light",
  ];
  final List<String> languageList = [
    "English",
    "عربي",
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var local = AppLocalizations.of(context)!;
    var vm = Provider.of<SettingsProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            local.language,
            style: theme.textTheme.titleLarge,
          ),
          const SizedBox(height: 10),
          CustomDropdown<String>(
            items: languageList,
            initialItem: vm.currentLanguage == "en" ? "English" : "عربي",
            decoration: CustomDropdownDecoration(
              expandedSuffixIcon: Icon(
                Icons.keyboard_arrow_up_rounded,
                color: vm.isDark() ? Color(0xFFFACC1D) : Colors.black,
              ),
              closedSuffixIcon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: vm.isDark() ? Color(0xFFFACC1D) : Colors.black,
              ),
              closedFillColor: vm.isDark() ? Color(0xFF141A2E) : Colors.white,
              expandedFillColor: vm.isDark() ? Color(0xFF141A2E) : Colors.white,
            ),
            onChanged: (value) {
              if (value == "English") {
                vm.changeLanguage("en");
              } else if (value == "عربي") {
                vm.changeLanguage("ar");
              }
            },
          ),
          const SizedBox(height: 40),
          Text(
            local.theme,
            style: theme.textTheme.titleLarge,
          ),
          const SizedBox(height: 10),
          CustomDropdown<String>(
            items: themeList,
            initialItem: vm.isDark() ? "Dark" : "Light",
            decoration: CustomDropdownDecoration(
              expandedSuffixIcon: Icon(
                Icons.keyboard_arrow_up_rounded,
                color: vm.isDark() ? Color(0xFFFACC1D) : Colors.black,
              ),
              closedSuffixIcon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: vm.isDark() ? Color(0xFFFACC1D) : Colors.black,
              ),
              closedFillColor: vm.isDark() ? Color(0xFF141A2E) : Colors.white,
              expandedFillColor: vm.isDark() ? Color(0xFF141A2E) : Colors.white,
            ),
            onChanged: (value) {
              if (value == "Light") {
                vm.changeTheme(ThemeMode.light);
              } else if (value == "Dark") {
                vm.changeTheme(ThemeMode.dark);
              }
            },
          )
        ],
      ),
    );
  }
}
