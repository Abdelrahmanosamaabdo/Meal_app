import 'package:flutter/material.dart';
import 'package:meal_app/data.dart';

import './meal.dart';

class Meals_Screen extends StatelessWidget {
  final String number;
  final String title;
  final Color color;

  final categoryMeals = DATA_MEALS.where((meal) {
    return meal.categories.contains('number');
  }).toList();

  Meals_Screen(this.number, this.title, this.color);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '$title',
          style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w400,
            fontSize: 18,
          ),
        ),
        backgroundColor: color,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Text(
            categoryMeals[index].title,
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
            ),
          );
        },
        itemCount: categoryMeals.length,
      ),
      backgroundColor: Colors.white,
    );
  }
}
