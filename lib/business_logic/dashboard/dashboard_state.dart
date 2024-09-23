part of 'dashboard_cubit.dart';

@immutable
sealed class DashboardState {}

final class DashboardInitial extends DashboardState {
}
class ClickCategory extends DashboardState {
  ClickCategory();
}

class RecipeLoaded extends DashboardState {
  final List<CategoriesModel> categories;

  RecipeLoaded(this.categories);
}