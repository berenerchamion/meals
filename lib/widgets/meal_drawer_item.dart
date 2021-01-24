import 'package:flutter/material.dart';

class MealDrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function tapHandler;

  MealDrawerItem(this.title, this.icon, this.tapHandler);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }
}

