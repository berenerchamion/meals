import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';

class MealItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  MealItem({
    @required this.title,
    @required this.imageUrl,
    @required this.duration,
    @required this.complexity,
    @required this.affordability,
  });

  void selectMeal() {}

  String get complexityText {
    switch (this.complexity) {
      case Complexity.Simple:
        return 'Simple';
        break;
      case Complexity.Challenging:
        return 'Challenging';
        break;
      case Complexity.Hard:
        return 'Hard';
        break;
      default:
        return 'Unknown';
    }
  }

  String get affordabilityText {
    switch (this.affordability) {
      case Affordability.Affordable:
        return '\$-\$\$';
        break;
      case Affordability.Luxurious:
        return '\$\$\$';
        break;
      case Affordability.Pricey:
        return '\$\$\$\$\$';
        break;
      default:
        return 'Unknown';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectMeal,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ), //End Image
                ), //End ClipRRect
                Positioned(
                  child: Container(
                    width: 350,
                    alignment: Alignment.bottomRight,
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    child: Text(
                      title,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ), //End Text
                  ), //End Container
                  bottom: 10,
                  right: 10,
                ),
              ],
            ), //end stack
            Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.schedule,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text('$duration min'),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.work,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text('$complexityText'),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.money,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text('$affordabilityText min'),
                    ],
                  ),
                ],
              ), //End row
            ), //End Padding
          ],
        ), //end column
      ), // end card
    );
  }
}
