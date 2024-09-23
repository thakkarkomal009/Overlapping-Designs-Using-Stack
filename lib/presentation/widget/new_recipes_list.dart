import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:layering_food_ui_using_stack/business_logic/dashboard/dashboard_cubit.dart';
import 'package:layering_food_ui_using_stack/presentation/widget/new_recipes.dart';
import 'package:layering_food_ui_using_stack/presentation/widget/recipes.dart';

class NewRecipesListScreen extends StatelessWidget {
  const NewRecipesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return InkWell(
            child: Container(
              width: 380,
              margin: const EdgeInsets.only(right: 20,  bottom: 10),
              child: NewRecipes(
                image: context.read<DashboardCubit>().recipes[index].image,
                recipeName:
                    context.read<DashboardCubit>().recipes[index].recipeName,
                rating: context.read<DashboardCubit>().recipes[index].rating,
                cookingTime:
                    context.read<DashboardCubit>().recipes[index].cookingTime,
                servingPeople:
                    context.read<DashboardCubit>().recipes[index].servingPeople,
              ),
            ),
            onTap: () {
              BlocProvider.of<DashboardCubit>(context).onClickCategory(index);
            },
          );
        },
        itemCount: context.read<DashboardCubit>().recipes.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
