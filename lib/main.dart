import 'package:flutter/material.dart';
import 'package:meals_app/screens/tabs_screen.dart';
import 'screens/meal_detail_screen.dart';
import 'screens/categories_meals_screen.dart';
import 'screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Colors.yellow[50],
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            body2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            title: TextStyle(
              fontFamily: 'RobotoCondensed',
              fontSize: 20,
            )),
      ),
      routes: {
        '/': (ctx) => TabScreen(),
        CategoriesMealsScreen.routeName: (ctx) => CategoriesMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => CategoriesMealsScreen());
      },
    );
  }
}
