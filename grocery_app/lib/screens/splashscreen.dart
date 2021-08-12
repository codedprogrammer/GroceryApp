import 'package:flutter/material.dart';
import 'package:orilla_fresca_app/helper/appcolors.dart';
import 'package:orilla_fresca_app/helper/iconhelper.dart';
import 'package:orilla_fresca_app/widgets/iconfont.dart';

class SplashPage extends StatelessWidget {
  int duration;
  Widget goToPage;

  SplashPage({required this.duration, required this.goToPage});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: this.duration), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => goToPage));
    });

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: AppColors.MAIN_COLOR,
        child: IconFont(
            color: Colors.white, size: 100, iconName: IconFontHelper.LOGO),
      ),
    );
  }
}