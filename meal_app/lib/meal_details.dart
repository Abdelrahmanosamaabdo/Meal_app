import 'package:flutter/material.dart';

class Meal_Details extends StatelessWidget {
  final List<String> ingredients;
  final List<String> steps;
  final int duration;

  Meal_Details(this.ingredients, this.steps, this.duration);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          width: 350,
          height: 485,
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '''Ingredients''',
                style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '''${ingredients.toString()}
            ''',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                'Steps',
                style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '''${steps.toString()}
            ''',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.alarm,
                    color: Colors.yellow,
                    size: 30,
                  ),
                  Text(
                    ' ${duration.toString()} mins',
                    style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
