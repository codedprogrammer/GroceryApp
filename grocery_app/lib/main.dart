import 'package:flutter/material.dart';
import 'package:orilla_fresca_app/screens/category_list_screen.dart';
import 'package:orilla_fresca_app/screens/splash_screen.dart';
import 'package:orilla_fresca_app/screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Raleway'),
      debugShowCheckedModeBanner: false,
      home: CategoryListPage(),
      // SplashPage(duration: 4, goToPage: WelcomePage()),
    );
  }
}

