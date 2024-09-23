//navigate to particular screen
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:layering_food_ui_using_stack/business_logic/dashboard/dashboard_cubit.dart';
import 'package:layering_food_ui_using_stack/presentation/screens/dashboard_screen.dart';
import 'package:layering_food_ui_using_stack/util/constants.dart';

class AppRouter {
  Route generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case DASHBOARD_SCREEN:
        final dashboardCubit = DashboardCubit();
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return BlocProvider.value(
              value: dashboardCubit,
              child: DashboardScreen(),
            );
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return getTransition(animation, child);
          },
          fullscreenDialog: true,
        );
      default:
        final dashboardCubit = DashboardCubit();
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return BlocProvider.value(
              value: dashboardCubit,
              child: DashboardScreen(),
            );
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return getTransition(animation, child);
          },
          fullscreenDialog: true,
        );
    }
  }
}

FadeTransition getTransition(Animation<double> animation, Widget child) {
  animation = CurvedAnimation(curve: Curves.easeIn, parent: animation);

  return FadeTransition(opacity: animation, child: child);
}
