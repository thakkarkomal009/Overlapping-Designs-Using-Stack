import 'package:flutter/cupertino.dart';

class CategoriesModel {
  final String icon;
  final String text;
  final Color color;
  bool isClicked;

  CategoriesModel(
      {required this.icon,
      required this.text,
      required this.color,
      required this.isClicked});
}
