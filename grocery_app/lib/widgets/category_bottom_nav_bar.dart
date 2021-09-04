import 'package:flutter/material.dart';
import 'package:orilla_fresca_app/helper/appcolors.dart';

class CategoryBottomNavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
                height: 100,
                padding: EdgeInsets.only(bottom: 20),
                decoration:
                    BoxDecoration(color: AppColors.WHITE_COLOR, boxShadow: [
                  BoxShadow(
                      blurRadius: 20,
                      color: AppColors.BLACK_COLOR.withOpacity(0.2),
                      offset: Offset.zero)
                ]),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ClipOval(
                          child: Material(
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.favorite,
                                      color: AppColors.MAIN_COLOR)))),
                      ClipOval(
                          child: Material(
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.shopping_cart,
                                      color: AppColors.MAIN_COLOR)))),
                      ClipOval(
                          child: Material(
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.pin_drop,
                                      color: AppColors.MAIN_COLOR)))),
                      ClipOval(
                          child: Material(
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.settings,
                                      color: AppColors.MAIN_COLOR)))),
                    ]),
              );
  }
}