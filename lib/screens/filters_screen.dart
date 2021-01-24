import 'package:flutter/material.dart';
import '../widgets/meals_drawer.dart';

class FiltersScreen extends StatelessWidget {
  static const String routeName = '/filters';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Meal Filters'),
      ),
      drawer: MealsDrawer(),
      body: Column(
        children: <Widget> [
          Text('Here are some filters...'),
        ],
      ),
    );
  }
}
