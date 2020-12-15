import 'package:flutter/material.dart';
import 'package:meals_app/category_meals_screen.dart';

//what a category item look like
class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategoryItem(this.id, this.title, this.color);

  void selectCategory(BuildContext ctx) {
    //namedRoute we created at main.dart
    Navigator.of(ctx).pushNamed(
      CategoryMealsScreen.routeName,
      arguments: {
        "id": id,
        "title": title,
      },
    );
    //flutter auto give u a back button
    //context hold info about position, attributes, blabla of this widget so
    // using it here is compulsory
  }

  @override
  Widget build(BuildContext context) {
    //you can add default Card here, but lecturer use Container to modify
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(20),
      //todo: check if we specific 20 here but 15 down there => what will happen
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
