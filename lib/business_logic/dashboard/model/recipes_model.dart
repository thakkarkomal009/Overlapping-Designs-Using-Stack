import 'package:flutter/material.dart';

class RecipesModel {
  final String image;
  final String recipeName;
  final double rating;
  final String cookingTime;
  final String servingPeople;
  final Color color;

  RecipesModel(
      {required this.image,
      required this.recipeName,
      required this.rating,
      required this.cookingTime,
      required this.servingPeople,
      required this.color});
}
