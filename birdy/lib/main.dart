import 'package:flutter/material.dart';

import 'package:health/pages/splashpage.dart';
import 'package:health/pages/welcome.dart';



void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashPage(
          duration: 1200,
          goToPage: const WelcomePage(),
        )),
  );
}