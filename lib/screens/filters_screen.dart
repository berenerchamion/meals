import 'package:flutter/material.dart';
import '../widgets/meals_drawer.dart';
import '../widgets/filter_item.dart';

class FiltersScreen extends StatefulWidget{
  static const String routeName = '/filters';
  final Function updateFilters;
  final Map <String, bool> currentFilters;

  FiltersScreen (this.currentFilters, this.updateFilters);

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  @override
  initState() {
    _glutenFree = widget.currentFilters['glutenFree'];
    _vegetarian = widget.currentFilters['vegetarian'];
    _vegan = widget.currentFilters['vegan'];
    _lactoseFree = widget.currentFilters['lactoseFree'];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Meal Filters'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save_rounded),
            onPressed: () {
              final selectedFilters = {
              'glutenFree': _glutenFree,
              'lactoseFree': _lactoseFree,
              'vegan': _vegan,
              'vegetarian': _vegetarian,
              };
              widget.updateFilters(selectedFilters);
            },
          ),
        ],
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
