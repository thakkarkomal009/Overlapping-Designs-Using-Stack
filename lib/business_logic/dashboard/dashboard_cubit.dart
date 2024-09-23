import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:layering_food_ui_using_stack/business_logic/dashboard/model/categories_model.dart';
import 'package:layering_food_ui_using_stack/business_logic/dashboard/model/recipes_model.dart';
import 'package:layering_food_ui_using_stack/util/color.dart';
import 'package:layering_food_ui_using_stack/util/constants.dart';
import 'package:meta/meta.dart';

part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(DashboardInitial()) {
    getCategories();
    getRecipes();
  }

  List<CategoriesModel> categories = [];
  List<RecipesModel> recipes = [];

  void onClickCategory(int index) {
    categories[index].isClicked = !categories[index].isClicked;
    for (int i = 0; i < categories.length; i++) {
      if (i != index) {
        categories[i].isClicked = false;
      }
    }
    emit(ClickCategory());
  }

  getCategories() {
    categories = [
      CategoriesModel(
          text: 'Thai', color: pinkColor, icon: thaiIcon, isClicked: true),
      CategoriesModel(
          text: 'Indian',
          color: greyColor,
          icon: italianIcon,
          isClicked: false),
      CategoriesModel(
          text: 'Italian',
          color: greyColor,
          icon: americanIcon,
          isClicked: false),
      CategoriesModel(
          text: 'Mexican',
          color: greyColor,
          icon: mexicanIcon,
          isClicked: false),
      CategoriesModel(
          text: 'Chinese',
          color: greyColor,
          icon: chineseIcon,
          isClicked: false),
      CategoriesModel(
          text: 'Japanese',
          color: greyColor,
          icon: japaneseIcon,
          isClicked: false),
      CategoriesModel(
          text: 'French', color: greyColor, icon: frenchIcon, isClicked: false),
      CategoriesModel(
          text: 'Mediterranean',
          color: greyColor,
          icon: mediterraneanIcon,
          isClicked: false),
      CategoriesModel(
          text: 'Spanish',
          color: greyColor,
          icon: spanishIcon,
          isClicked: false),
      CategoriesModel(
          text: 'Middle Eastern',
          color: greyColor,
          icon: middleeasterncuisineIcon,
          isClicked: false),
    ];
    // emit(RecipeLoaded(categories));
  }

  getRecipes() {
    recipes = [
      RecipesModel(
          image: spaghetti,
          recipeName: 'Spaghetti with vegetables',
          rating: 5,
          cookingTime: '5 min',
          servingPeople: '1 Serve',
          color: primaryColor),
      RecipesModel(
          image: pasto_noodles,
          recipeName: 'Green Pesto Noodles',
          rating: 5,
          cookingTime: '10 min',
          servingPeople: '1 Serve',
          color: Colors.yellow.shade800),
      RecipesModel(
          image: spaghetti_with_lettuce,
          recipeName: 'Spaghetti with lettuce',
          rating: 3,
          cookingTime: '15 min',
          servingPeople: '1 Serve',
          color: Colors.pink.shade400),
      RecipesModel(
          image: spaghetti_with_grilled_sausage,
          recipeName: 'Spaghetti with grilled sausage',
          rating: 5,
          cookingTime: '10 min',
          servingPeople: '1 Serve',
          color: Colors.lightBlueAccent.shade200),
    ];
    // emit(RecipeLoaded(categories));
  }
}
