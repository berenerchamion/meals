import 'package:flutter/material.dart';
import '../widgets/meal_item.dart';
import '../models/meal.dart';
import '../models/category.dart';

class FavoritesScreen extends StatelessWidget {
  static const String routeName = '/favorites';

  final List<Meal> favoriteMeals;

  FavoritesScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    final Category favCategory = Category(id: 'favs', title: 'Favorites', color: Colors.red);

    if(favoriteMeals.isEmpty) {
      return(
          Scaffold(
            body: Column(
              children: <Widget> [
                Text('You got none...'),
              ],
            ),
          )
      );
    }
    else {
      return(
          Scaffold(
            body: ListView.builder(
              itemBuilder: (ctx, index) {
                return MealItem(
                  id: favoriteMeals[index].id,
                  title: favoriteMeals[index].title,
                  imageUrl: favoriteMeals[index].imageUrl,
                  duration: favoriteMeals[index].duration,
                  complexity: favoriteMeals[index].complexity,
                  affordability: favoriteMeals[index].affordability,
                  currentCategory: favCategory,
                );
              },
              itemCount: favoriteMeals.length,
            ),
          )
      );
    }
  }
}
