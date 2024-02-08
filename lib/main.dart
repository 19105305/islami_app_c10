import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_app/config/application_theme_manager.dart';
import 'package:islami_app/layout/layout_view.dart';
import 'package:islami_app/modules/hadeth/page/hadeth_details_view.dart';
import 'package:islami_app/modules/quran/page/quran_detail.dart';
import 'package:islami_app/modules/splash/page/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Islami App",
      debugShowCheckedModeBanner: false,
      theme: ApplicationThemeManager.lightTheme,
      themeMode: ThemeMode.light,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('ar'), // Spanish
      ],
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
