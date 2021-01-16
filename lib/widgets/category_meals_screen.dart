import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Recipies'),
      ),
      body: Center(
        child: Text('Here are the recipies for the category.'),
      ),
    );
  }
}
