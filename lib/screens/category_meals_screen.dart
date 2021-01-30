import 'package:flutter/material.dart';
import '../models/category.dart';
import '../models/meal.dart';
import '../widgets/meal_item.dart';
import '../data/dummy_meals.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const String routeName = '/category-meals';

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {

  List <Meal> currentMeals;
  Category category;

  void initState() {
    this.category = ModalRoute.of(context).settings.arguments as Category;
    this.currentMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();
    super.initState();
  }

  void _removeMeal(String mealId) {
    setState(() {
      currentMeals.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('The ${category.title} Recipies'),
        backgroundColor: category.color,
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: currentMeals[index].id,
            title: currentMeals[index].title,
            imageUrl: currentMeals[index].imageUrl,
            duration: currentMeals[index].duration,
            complexity: currentMeals[index].complexity,
            affordability: currentMeals[index].affordability,
            currentCategory: category,
            removeMeal: _removeMeal,
          );
        },
        itemCount: currentMeals.length,
      ),
    );
  }
}
