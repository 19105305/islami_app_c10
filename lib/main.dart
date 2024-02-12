import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/config/application_theme_manager.dart';
import 'package:islami_app/config/settings_provider.dart';
import 'package:islami_app/layout/layout_view.dart';
import 'package:islami_app/modules/hadeth/page/hadeth_details_view.dart';
import 'package:islami_app/modules/quran/page/quran_detail.dart';
import 'package:islami_app/modules/splash/page/splash_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => SettingsProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<SettingsProvider>(context);

    return MaterialApp(
      title: "Islami App",
      debugShowCheckedModeBanner: false,
      theme: ApplicationThemeManager.lightTheme,
      darkTheme: ApplicationThemeManager.darkTheme,
      themeMode: vm.currentThemeMode,
      locale: Locale(vm.currentLanguage),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      initialRoute: SplashView.routename,
      routes: {
        SplashView.routename: (context) => const SplashView(),
        LayoutView.routename: (context) => const LayoutView(),
        QuranDetailsView.routename: (context) => QuranDetailsView(),
        HadethDetailsView.routename: (context) => HadethDetailsView(),
      },
    );
  }
}
