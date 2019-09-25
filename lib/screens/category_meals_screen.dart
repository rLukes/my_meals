import 'package:flutter/material.dart';
import '../widgets/meal_item.dart';
import '../dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = "/category-meals";
//  final String categoryId;
//  final String categoryTitle;
//
//  CategoryMealsScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final catTitle = routArgs['title'];
    final categoryId = routArgs['id'];

    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(catTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          var cat = categoryMeals[index];
          return MealItem(
            title: cat.title,
            image: cat.imageUrl,
            affordability: cat.affordability,
            complexity: cat.complexity,
            duration: cat.duration,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
