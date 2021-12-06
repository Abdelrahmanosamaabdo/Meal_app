import 'package:flutter/material.dart';

import './meals_screen.dart';

class Item extends StatelessWidget {
  final String number;
  final String title;
  final Color color;

  Item(this.number, this.title, this.color);

  void selectCategory(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (c) {
          return Meals_Screen(number, title, color);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Colors.white,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Text(
          title,
          style: TextStyle(
            color: color,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black,
                color,
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
