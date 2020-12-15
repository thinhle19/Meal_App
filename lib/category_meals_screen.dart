import 'package:flutter/material.dart';

//show all meals of the cate we chose ???????
class CategoryMealsScreen extends StatelessWidget {
  /*final String cateId;
  final String cateTitle;

  CategoryMealsScreen(this.cateId, this.cateTitle);*/
//don't need this anymore because now we use namedRouted and Passing Data
// with Named Routes

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final cateTitle = routeArgs["title"];
    final cateId = routeArgs["id"];

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
