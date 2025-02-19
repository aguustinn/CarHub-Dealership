import 'package:flutter/material.dart';
import 'screens/categories_screen.dart';
import 'screens/categories_meals_screen.dart';
import 'utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vamos Comprar?',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Raleway',
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ).copyWith(
          surface: Color.fromRGBO(255, 254, 229, 1),
        ),
        textTheme: ThemeData.light().textTheme.copyWith(
              titleLarge: TextStyle(fontSize: 20, fontFamily: 'RobotoCondesed'),
            ),
      ),
      routes: {
        AppRoutes.HOME : (ctx) => CategoriesScreen(),
        AppRoutes.CATEGORIES_MEALS : (ctx) => CategoriesMealsScreen(),
      },
    );
  }
}
