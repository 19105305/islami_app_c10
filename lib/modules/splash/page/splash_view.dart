import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_app/layout/layout_view.dart';

class SplashView extends StatefulWidget {
  static const String routename = "/";

  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, LayoutView.routename);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Image.asset("assets/images/splash_background.png",
          width: mediaQuery.width,
          height: mediaQuery.height,
          fit: BoxFit.cover),
    );
  }
}
