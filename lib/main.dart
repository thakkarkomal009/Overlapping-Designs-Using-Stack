import 'package:flutter/material.dart';
import 'package:layering_food_ui_using_stack/presentation/router/router.dart';

void main() {
  runApp(FoodUIUsingStack(
    router: AppRouter(),
  ));
}

class FoodUIUsingStack extends StatelessWidget {
  final AppRouter? router;

  const FoodUIUsingStack({this.router, super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: router!.generateRoute,
    );
  }
}