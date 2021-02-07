import 'package:flutter/material.dart';
import '../models/meal.dart';

class FavoritesScreen extends StatelessWidget {
  static const String routeName = '/favorites';

  List<Meal> favoriteMeals;

  FavoritesScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget> [
          Text('Here are some favorites...')
        ],
      ),
    );
  }
}
