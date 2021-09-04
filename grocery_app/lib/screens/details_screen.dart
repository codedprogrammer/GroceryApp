import 'package:flutter/material.dart';
import 'package:orilla_fresca_app/models/subcategory.dart';
import 'package:orilla_fresca_app/widgets/main_appbar.dart';

class DetailsScreen extends StatelessWidget {

  SubCategory? subCategory;
  DetailsScreen({this.subCategory});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Center(
        child: Text(this.subCategory!.name!),

      ),
    );
  }
}