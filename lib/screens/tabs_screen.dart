import 'package:flutter/material.dart';

import 'package:meals/screens/favorites_screen.dart';
import './categories_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Beren\'s Meals'),
          bottom: TabBar(
            labelPadding: EdgeInsets.all(0),
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.category),
              ),
              Tab(
                icon: Icon(Icons.star),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget> [
            CategoriesScreen(),
            FavoritesScreen(),
          ],
        ),
      ),
    );
  }
}
