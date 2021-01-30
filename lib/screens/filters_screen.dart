import 'package:flutter/material.dart';
import '../widgets/meals_drawer.dart';

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
              children: <Widget> [
                SwitchListTile(
                  title: Text('Gluten Free'),
                  subtitle: Text('Include gluten free meals.'),
                  value: _glutenFree,
                  activeColor: Theme.of(context).primaryColor,
                  onChanged: (newValue){
                    setState((){
                      _glutenFree = newValue;
                    });
                  },
                ),
                SwitchListTile(
                  title: Text('Vegetarian'),
                  subtitle: Text('Include vegetarian meals.'),
                  value: _vegetarian,
                  activeColor: Theme.of(context).primaryColor,
                  onChanged: (newValue){
                    setState((){
                      _vegetarian = newValue;
                    });
                  },
                ),
                SwitchListTile(
                  title: Text('Vegan'),
                  subtitle: Text('Include gluten free meals.'),
                  value: _vegan,
                  activeColor: Theme.of(context).primaryColor,
                  onChanged: (newValue){
                    setState((){
                      _vegan = newValue;
                    });
                  },
                ),
                SwitchListTile(
                  title: Text('Lactose Free'),
                  subtitle: Text('Include gluten free meals.'),
                  value: _lactoseFree,
                  activeColor: Theme.of(context).primaryColor,
                  onChanged: (newValue){
                    setState((){
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
