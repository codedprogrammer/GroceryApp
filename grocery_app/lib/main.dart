import 'package:flutter/material.dart';
import 'package:grocery_app/helper/iconhelper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashPage(duration: 3, goToPage: WelcomePage()),
    );
  }
}

class IconFont extends StatelessWidget {
  Color color;
  double size;
  String iconName;

  IconFont({required this.color, required this.size, required this.iconName});
  @override
  Widget build(BuildContext context) {
    return Text(
      iconName,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontFamily: 'orilla',
      ),
    );
  }
}

class SplashPage extends StatelessWidget {
  int duration;
  Widget goToPage;

  SplashPage({required this.duration, required this.goToPage});

  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: this.duration), (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => goToPage));
    });

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Color(0XFF80C038),
        child: IconFont(color: Colors.white, size: 100, iconName: IconFontHelper.LOGO),
      ),
    );
  }
}

class WelcomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(alignment: Alignment.center, child: Text('Hello World')),
    );
  }
}
