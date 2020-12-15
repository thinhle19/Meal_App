import 'package:flutter/material.dart';

//the recipe of the cate we chose ???????
class CategoryMealsScreen extends StatelessWidget {
  final String cateId;
  final String cateTitle;

  CategoryMealsScreen(this.cateId, this.cateTitle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cateTitle),
      ),
      body: Center(
        child: Text(
          "The Recipes for the $cateTitle",
        ),
      ),
    );
  }
}
