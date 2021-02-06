import 'package:flutter/material.dart';
import './models/meal.dart';
import './screens/category_meals_screen.dart';
import './screens/tabs_screen.dart';
import './screens/meal_detail_screen.dart';
import './screens/filters_screen.dart';
import './screens/favorites_screen.dart';

import './data/dummy_meals.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map <String, bool> _filters = {
    'glutenFree': false,
    'lactoseFree': false,
    'vegan': false,
    'vegetarian': false,
  };

  List <Meal> _availableMeals = DUMMY_MEALS;

  void _setFilters (Map<String, bool> filterData){
    setState(() {
      _filters = filterData;

      _availableMeals = DUMMY_MEALS.where((meal){
        if (_filters['gluten'] && !meal.isGlutenFree) {
          return false;
        }
        else if (_filters['lactose'] && !meal.isLactoseFree) {
        return false;
        }
        else if (_filters['vegan'] && !meal.isVegan) {
        return false;
        }
        else if (_filters['vegetarian'] && !meal.isVegetarian) {
        return false;
        }
        else
          return true;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beren\'s Meals',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Color.fromRGBO(53, 129, 184, .20),
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline6: TextStyle(
                fontSize: 18,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      home: TabsScreen(),
      routes: {
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(_availableMeals),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
        FiltersScreen.routeName: (ctx) => FiltersScreen(_setFilters),
        FavoritesScreen.routeName: (ctx) => FavoritesScreen(),
      },
    );
  }
}
