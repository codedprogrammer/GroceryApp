import 'dart:ui';

import 'package:orilla_fresca_app/models/subcategory.dart';

class Category {
  String? name;
  String? icon;
  Color? color;
  String? imageName;
  List<SubCategory>? subCategories;

  Category(
      {this.name,
      this.icon,
      this.color,
      this.imageName,
      this.subCategories});
}
