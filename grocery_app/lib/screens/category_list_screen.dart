import 'package:flutter/material.dart';
import 'package:orilla_fresca_app/helper/appcolors.dart';
import 'package:orilla_fresca_app/helper/category_list_api.dart';
import 'package:orilla_fresca_app/helper/iconhelper.dart';
import 'package:orilla_fresca_app/models/category.dart';
import 'package:orilla_fresca_app/styles/category_list_screen.dart';
import 'package:orilla_fresca_app/widgets/category_card.dart';
import 'package:orilla_fresca_app/widgets/categoryicon.dart';
import 'package:orilla_fresca_app/widgets/iconfont.dart';

class CategoryListPage extends StatelessWidget {
  List<Category> category = CategoryListAPI.getMockedCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        centerTitle: true,
        title: IconFont(
          color: AppColors.MAIN_COLOR,
          size: 40,
          iconName: IconFontHelper.LOGO,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: AppColors.MAIN_COLOR),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.all(10),
            child: ClipOval(child: Image.asset('assets/images/me.jpg')),
          )
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      'Select a Category',
                      textAlign: TextAlign.center,
                      style: categoryTitleStyle(),
                    )),
                Expanded(
                    child: ListView.builder(
                        itemCount: category.length,
                        itemBuilder: (BuildContext context, int index) {
                          return CategoryCard(category: category[index]);
                        })),
              ],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
