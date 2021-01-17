import 'package:flutter/material.dart';
import '../models/category.dart';

class CategoryMealsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Category;
    return Scaffold(
      appBar: AppBar(
        title: Text('The ${routeArgs.title} Recipies'),
        backgroundColor: routeArgs.color,
      ),
      body: Center(
        child: Text('Here are the ${routeArgs.title} recipies for the category.'),
      ),
    );
  }
}
