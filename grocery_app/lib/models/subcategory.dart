import 'package:flutter/material.dart';
import 'package:orilla_fresca_app/models/category.dart';

class SubCategory extends Category {
  SubCategory({
    String? name,
    String? icon,
    Color? color,
    String? imageName
  }) : super(
          name: name,
          icon: icon,
          color: color,
          imageName: imageName
        );
}
