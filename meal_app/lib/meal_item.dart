import 'package:flutter/material.dart';

import './meal_details.dart';

class Meal_Item extends StatelessWidget {
  final String number;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;

  Meal_Item(this.number, this.title, this.imageUrl, this.ingredients,
      this.steps, this.duration);

  void selectMeal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return Meal_Details(ingredients, steps, duration);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
      splashColor: Colors.white,
      borderRadius: BorderRadius.circular(20),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        margin: EdgeInsets.all(5),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      imageUrl,
                      height: 300,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black,
                          Colors.black.withOpacity(0),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    '$title',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
