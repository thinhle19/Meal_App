import 'package:flutter/material.dart';

import '../widgets/category_item.dart';
import '../dummy_data.dart';

//display list of category
class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //we can able to use .builder with the list with dynamic amount => but no
    // need
    return GridView(
        padding: const EdgeInsets.all(25),
        children: (DUMMY_CATEGORIES.map(
          (cate) => (CategoryItem(
            cate.id,
            cate.title,
            cate.color,
          )),
        )).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2, //200 width => 300 height
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        //SliverGridDelegateWithMaxCrossAxisExtent() delegate size for EACH
        // item in GridView and the GridView try to add as many columns as
        // possible
    );
  }
}
