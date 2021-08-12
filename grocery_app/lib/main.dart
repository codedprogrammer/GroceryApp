import 'package:flutter/material.dart';
import 'package:orilla_fresca_app/screens/splashscreen.dart';
import 'package:orilla_fresca_app/screens/welcomescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: SplashPage(duration: 4, goToPage: WelcomePage()),
    );
  }
}

