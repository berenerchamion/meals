import 'package:flutter/material.dart';
import './meal_drawer_item.dart';
import '../screens/filters_screen.dart';
import '../screens/tabs_screen.dart';

class MealsDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 100,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.bottomCenter,
            color: Theme.of(context).primaryColor,
            child: Text(
              'Cooking Big!',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).canvasColor,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          MealDrawerItem(
            'Beren\'s Meals',
            Icons.restaurant,
            () {
              Navigator.of(context).pushReplacementNamed(TabsScreen.routeName);
            },
          ),
          Divider(
            color: Theme.of(context).primaryColor,
          ),
          MealDrawerItem(
            'Filter Categories',
            Icons.filter,
            () {
              Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
