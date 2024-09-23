import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:layering_food_ui_using_stack/business_logic/dashboard/dashboard_cubit.dart';
import 'package:layering_food_ui_using_stack/presentation/widget/category_list.dart';
import 'package:layering_food_ui_using_stack/presentation/widget/new_recipes_list.dart';
import 'package:layering_food_ui_using_stack/presentation/widget/recommended_recipes.dart';
import 'package:layering_food_ui_using_stack/presentation/widget/scan_button.dart';
import 'package:layering_food_ui_using_stack/presentation/widget/search_recipe.dart';
import 'package:layering_food_ui_using_stack/util/color.dart';
import 'package:layering_food_ui_using_stack/util/constants.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DashboardCubit, DashboardState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is ClickCategory) {}
        return Scaffold(
            // backgroundColor: backgroundColor,
            appBar: AppBar(
                toolbarHeight: 80,
                surfaceTintColor: Colors.transparent,
                backgroundColor: backgroundColor,
                title: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Search',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                          fontSize: 20),
                    ),
                    Text(
                      'for recipes',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black87,
                          fontSize: 20),
                    ),
                  ],
                ),
                actions: [
                  Stack(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        margin: const EdgeInsets.only(left: 10),
                        decoration: const BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(60),
                          ),
                        ),
                      ),
                      const Positioned(
                        right: 10,
                        top: 10,
                        child: CircleAvatar(
                          radius: 20, // Radius of the circular image
                          backgroundImage: NetworkImage(
                            profileUrl, // Your image URL here
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),
            body: SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                padding: const EdgeInsets.only(left: 20, top: 20),
                color: backgroundColor,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(flex: 3, child: SearchRecipe()),
                        SizedBox(
                          width: 30,
                        ),
                        Expanded(flex: 1, child: ScanButton())
                      ],
                    ),
                    Expanded(
                      flex: 1,
                      child: CategoryListScreen(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        'Recommended',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 18),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: RecommendedRecipesScreen(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'New Recipes',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 18),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: NewRecipesListScreen(),
                    )
                  ],
                ),
              ),
            ));
      },
    );
  }
}
