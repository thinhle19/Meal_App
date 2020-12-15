import 'package:flutter/material.dart';

import '../dummy_data.dart';

//show all meals of the cate we chose ???????
class CategoryMealsScreen extends StatelessWidget {
  static const routeName = "/category-meals";
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
    final cateMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(cateId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(cateTitle),
      ),
      body: ListView.builder(itemBuilder: (ctx, index) {
        return Text("${cateMeals[index].title}");
      }, itemCount: cateMeals.length,),
    );
  }
}