import 'package:flutter/material.dart';

import '../screens/favorites_screen.dart';
import './categories_screen.dart';
import '../widgets/meals_drawer.dart';

class TabsScreen extends StatefulWidget {
  static const String routeName = '/';
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
            indicator: BoxDecoration(
              color: Colors.deepPurpleAccent,
              border: Border(
                top: BorderSide(
                  color: Colors.black26,
                ),
                left: BorderSide(
                  color: Colors.black26,
                ),
                right: BorderSide(
                  color: Colors.black26,
                ),
              ),
            ),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
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
        drawer: MealsDrawer(),
        body: TabBarView(
          children: <Widget>[
            CategoriesScreen(),
            FavoritesScreen(),
          ],
        ),
      ),
    );
  }
}
