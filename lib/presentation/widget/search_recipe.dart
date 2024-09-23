import 'package:flutter/material.dart';
import 'package:layering_food_ui_using_stack/util/color.dart';

class SearchRecipe extends StatelessWidget {
  const SearchRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(30.0))),
        prefixIcon: Icon(
          Icons.search,
          color: greyColor,
        ),
        filled: true,
        hintStyle: TextStyle(color: greyColor),
        hintText: "Find recipes or chef",
        fillColor: Colors.white70,
      ),
    );
  }
}
