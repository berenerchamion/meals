import 'package:flutter/material.dart';
import '../models/category.dart';
import '../widgets/meal_item.dart';
import '../data/dummy_meals.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const String routeName = '/category-meals';

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Category;
    final categoryTitle = routeArgs.title;
    final categoryId = routeArgs.id;
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('The ${routeArgs.title} Recipies'),
        backgroundColor: routeArgs.color,
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            title: categoryMeals[index].title,
            imageUrl: categoryMeals[index].imageUrl,
            duration: categoryMeals[index].duration,
            complexity: categoryMeals[index].complexity,
            affordability: categoryMeals[index].affordability,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
