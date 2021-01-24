import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  static const String routeName = '/favorites';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Meal Favorites'),
      ),
      body: Column(
        children: <Widget> [
          Text('Here are some favorites...')
        ],
      ),
    );
  }
}
