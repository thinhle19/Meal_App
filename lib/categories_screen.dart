import 'package:flutter/material.dart';

import 'package:meals_app/category_item.dart';
import 'dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //we can able to use .builder with the list with dynamic amount => but no
    // need
    return Scaffold(
      appBar: AppBar(
        title: const Text("DeliMeal"),
      ),
      body: GridView(
        children: (DUMMY_CATEGORIES
            .map((cate) => (CategoryItem(cate.title, cate.color)))).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2, //200 width => 300 height
          crossAxisSpacing: 20,
          mainAxisSpacing: 20
        ),
        //SliverGridDelegateWithMaxCrossAxisExtent() delegate size for EACH
        // item in GridView and the GridView try to add as many columns as
        // possible
      ),
    );
  }
}
