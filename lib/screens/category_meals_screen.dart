import 'package:flutter/material.dart';
import '../models/category.dart';
import '../widgets/meal_item.dart';
import '../data/dummy_meals.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const String routeName = '/category-meals';

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Category;
    final categoryTitle = routeArgs.title;
    final categoryId = routeArgs.id;
    final categoryColor = routeArgs.color;
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('The $categoryTitle Recipies'),
        backgroundColor: categoryColor,
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: categoryMeals[index].id,
            title: categoryMeals[index].title,
            imageUrl: categoryMeals[index].imageUrl,
            duration: categoryMeals[index].duration,
            complexity: categoryMeals[index].complexity,
            affordability: categoryMeals[index].affordability,
            currentCategory: routeArgs,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
