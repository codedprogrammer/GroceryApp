import 'package:flutter/material.dart';
import 'package:orilla_fresca_app/helper/appcolors.dart';
import 'package:orilla_fresca_app/helper/iconhelper.dart';
import 'package:orilla_fresca_app/screens/category_list_screen.dart';
import 'package:orilla_fresca_app/styles/welcome_screen.dart';
import 'package:orilla_fresca_app/widgets/iconfont.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.black,
      child: Stack(
        children: <Widget>[
          Positioned.fill(
              child: Opacity(
            opacity: 0.3,
            child:
                Image.asset('assets/images/of_main_bg.png', fit: BoxFit.cover),
          )),
          Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: ClipOval(
                      child: Container(
                          width: 180,
                          height: 180,
                          color: AppColors.MAIN_COLOR,
                          alignment: Alignment.center,
                          child: IconFont(
                            color: Colors.white,
                            size: 130,
                            iconName: IconFontHelper.MAIN_LOGO,
                          )),
                    ),
                  ),
                  SizedBox(height: 50),
                  Text(
                    'Welcome',
                    textAlign: TextAlign.center,
                    style: welcomeScreenHeadertextButtonStyle(),
                  ),
                  SizedBox(height: 40),
                  Text(
                    'Fresh and Healthy Products\nOn time Delivery',
                    textAlign: TextAlign.center,
                    style: welcomeScreenSubtextButtonStyle(),
                  ),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: AppColors.MAIN_COLOR,
                            padding: EdgeInsets.all(20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        child: Text('Try Now!',
                            style: welcomeScreenTryNowButtonStyle())),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CategoryListPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            onPrimary: AppColors.MAIN_COLOR.withOpacity(0.2),
                            side: BorderSide(
                                color: AppColors.MAIN_COLOR, width: 2),
                            padding: EdgeInsets.all(20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        child: Text('Login',
                            style: welcomeScreenLoginButtonStyle())),
                  ),
                ]),
          ),
        ],
      ),
    ));
  }
}
