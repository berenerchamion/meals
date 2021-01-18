import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../widgets/meal_item.dart';

class MealDetailScreen extends StatelessWidget {
  static const String routeName = '/meal-detail';

  @override
  Widget build(BuildContext context) {
    final MealItem mealItem =
        ModalRoute.of(context).settings.arguments as MealItem;
    return Scaffold(
        appBar: AppBar(
          title: Text('Beren\'s Meals: ${mealItem.title}'),
          backgroundColor: mealItem.currentCategory.color,
        ),
        body: Container(
          child: Text(
              'This is meal id ${mealItem.id} and meal category id ${mealItem.currentCategory.id}'),
        ));
  }
}
