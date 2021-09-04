import 'package:flutter/material.dart';
import 'package:orilla_fresca_app/helper/appcolors.dart';
import 'package:orilla_fresca_app/helper/category_list_api.dart';
import 'package:orilla_fresca_app/helper/iconhelper.dart';
import 'package:orilla_fresca_app/models/category.dart';
import 'package:orilla_fresca_app/screens/selected_category_screen.dart';
import 'package:orilla_fresca_app/styles/category_list_screen.dart';
import 'package:orilla_fresca_app/widgets/category_bottom_nav_bar.dart';
import 'package:orilla_fresca_app/widgets/category_card.dart';
import 'package:orilla_fresca_app/widgets/categoryicon.dart';
import 'package:orilla_fresca_app/widgets/iconfont.dart';
import 'package:orilla_fresca_app/widgets/main_appbar.dart';

class CategoryListPage extends StatelessWidget {
  List<Category> category = CategoryListAPI.getMockedCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: MainAppBar(),
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
                        padding: EdgeInsets.only(bottom: 120),
                        itemCount: category.length,
                        itemBuilder: (BuildContext context, int index) {
                          return CategoryCard(
                              category: category[index],
                              onCardClick: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            SelectedCategoryScreen(
                                              selectedCategory:
                                                  this.category[index],
                                            )));
                              });
                        })),
              ],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: CategoryBottomNavBar(),
            ),
          ],
        ),
      ),
    );
  }
}
