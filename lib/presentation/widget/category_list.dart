import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:layering_food_ui_using_stack/business_logic/dashboard/dashboard_cubit.dart';
import 'package:layering_food_ui_using_stack/presentation/widget/categories.dart';
import 'package:layering_food_ui_using_stack/util/color.dart';

class CategoryListScreen extends StatelessWidget {
  const CategoryListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            height: 150,
            width: 100,
            padding: const EdgeInsets.only(top: 20.0),
            child: InkWell(
              child: Categories(
                text: context.read<DashboardCubit>().categories[index].text,
                color:
                    context.read<DashboardCubit>().categories[index].isClicked
                        ? pinkColor
                        : greyColor,
                icon: context.read<DashboardCubit>().categories[index].icon,
              ),
              onTap: () {
                BlocProvider.of<DashboardCubit>(context).onClickCategory(index);
              },
            ),
          );
        },
        itemCount: context.read<DashboardCubit>().categories.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
