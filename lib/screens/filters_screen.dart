import 'package:flutter/material.dart';
import '../widgets/meals_drawer.dart';
import '../widgets/filter_item.dart';

class FiltersScreen extends StatefulWidget {
  static const String routeName = '/filters';

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenFree = true;
  bool _vegetarian = true;
  bool _vegan = true;
  bool _lactoseFree = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Meal Filters'),
      ),
      drawer: MealsDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust your meal selections:',
              style: Theme.of(context).textTheme.headline6,
            ),
          ), //Container
          Expanded(
            child: ListView(
              children: <Widget>[
                FilterItem(
                  'Gluten Free',
                  'Include gluten free meals.',
                  _glutenFree,
                  (newValue) {
                    setState(() {
                      _glutenFree = newValue;
                    });
                  },
                ),
                FilterItem(
                  'Vegetarian',
                  'Include vegetarian meals.',
                  _vegetarian,
                  (newValue) {
                    setState(() {
                      _vegetarian = newValue;
                    });
                  },
                ),
                FilterItem(
                  'Vegan',
                  'Include gluten free meals.',
                  _vegan,
                  (newValue) {
                    setState(() {
                      _vegan = newValue;
                    });
                  },
                ),
                FilterItem(
                  'Lactose Free',
                  'Include gluten free meals.',
                  _lactoseFree,
                  (newValue) {
                    setState(() {
                      _lactoseFree = newValue;
                    });
                  },
                ),
              ],
            ), //ListView
          ), //Container
        ],
      ),
    );
  }
}
