import 'package:flutter/material.dart';

class Meal {
  final int number;
  final String title;
  final String imageUrl;
  final List<String> categories;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;

  final bool sugarfree;
  final bool highProtein;

  const Meal({
    required this.number,
    required this.title,
    required this.imageUrl,
    required this.categories,
    required this.ingredients,
    required this.steps,
    required this.duration,
    required this.sugarfree,
    required this.highProtein,
  });
}
