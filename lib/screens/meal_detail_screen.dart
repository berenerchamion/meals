import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../widgets/meal_item.dart';
import '../widgets/section_title.dart';

import '../data/dummy_meals.dart';

class MealDetailScreen extends StatelessWidget {
  static const String routeName = '/meal-detail';

  @override
  Widget build(BuildContext context) {
    final MealItem mealItem =
        ModalRoute.of(context).settings.arguments as MealItem;
    final selectedMeal =
        DUMMY_MEALS.firstWhere((meal) => meal.id == mealItem.id);
    return Scaffold(
      appBar: AppBar(
        title: Text('${mealItem.currentCategory.title}: ${mealItem.title}'),
        backgroundColor: mealItem.currentCategory.color,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ), //Container
            SectionTitle('Ingredients'),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              height: 150,
              width: 350,
              child: ListView.builder(
                itemBuilder: (ctx, index) => Column(
                  children: <Widget> [
                    Card(
                      elevation: 0,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 3,
                          horizontal: 5,
                        ),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          selectedMeal.ingredients[index],
                        ),
                      ),
                    ),
                    Divider(
                      color: Theme.of(ctx).accentColor,
                    ),
                  ],
                ),
                itemCount: selectedMeal.ingredients.length,
              ),
            ),
            SectionTitle('Instructions'),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(5),
              height: 250,
              width: 350,
              child: ListView.builder(
                itemBuilder: (ctx, index) => Column(
                  children: <Widget>[
                    ListTile(
                      leading: CircleAvatar(
                        child: Text(
                          '# ${index + 1}',
                        ),
                        backgroundColor: mealItem.currentCategory.color,
                      ),
                      title: Text(
                        selectedMeal.steps[index],
                      ),
                    ),
                    Divider(
                      color: Theme.of(ctx).accentColor,
                    ),
                  ],
                ),
                itemCount: selectedMeal.steps.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
