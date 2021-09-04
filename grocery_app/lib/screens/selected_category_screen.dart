import 'package:flutter/material.dart';
import 'package:orilla_fresca_app/models/category.dart';
import 'package:orilla_fresca_app/screens/details_screen.dart';
import 'package:orilla_fresca_app/widgets/categoryicon.dart';
import 'package:orilla_fresca_app/widgets/main_appbar.dart';

class SelectedCategoryScreen extends StatelessWidget {
  Category? selectedCategory;

  SelectedCategoryScreen({this.selectedCategory});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Center(
        child: Container(
            child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CategoryIcon(
                    color: this.selectedCategory!.color!,
                    iconName: this.selectedCategory!.icon!),
                SizedBox(width: 10),
                Text(
                  this.selectedCategory!.name!,
                  style: TextStyle(
                      color: this.selectedCategory!.color, fontSize: 20),
                )
              ],
            ),
            SizedBox(height: 30),
            Expanded(
                child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(
                  this.selectedCategory!.subCategories!.length, (index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                                subCategory: this
                                    .selectedCategory!
                                    .subCategories![index])));
                  },
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        ClipOval(
                          child: Image.asset(
                            'assets/images/' +
                                this
                                    .selectedCategory!
                                    .subCategories![index]
                                    .imageName! +
                                '.png',
                            fit: BoxFit.cover,
                            height: 100,
                            width: 100,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          this.selectedCategory!.subCategories![index].name!,
                          style: TextStyle(color: this.selectedCategory!.color),
                        )
                      ],
                    ),
                  ),
                );
              }),
            ))
          ],
        )),
      ),
    );
  }
}
