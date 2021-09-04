import 'package:flutter/material.dart';
import 'package:orilla_fresca_app/helper/appcolors.dart';
import 'package:orilla_fresca_app/helper/iconhelper.dart';
import 'package:orilla_fresca_app/widgets/iconfont.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget{

  Color? themeColor;

  MainAppBar({this.themeColor = AppColors.MAIN_COLOR});

  @override
  _MainAppBarState createState() => _MainAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => new Size.fromHeight(80);
}

class _MainAppBarState extends State<MainAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        centerTitle: true,
        title: IconFont(
          color: widget.themeColor!,
          size: 40,
          iconName: IconFontHelper.LOGO,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: widget.themeColor!),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.all(10),
            child: ClipOval(child: Image.asset('assets/images/me.jpg')),
          )
        ],
      );
  }
}