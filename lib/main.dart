import 'package:flutter/material.dart';
import './screens/meal_detail_screen.dart';
import 'screens/category_meals_screen.dart';
import 'screens/categories_screen.dart';

void main() {
  runApp(MyMealsApp());
}

class MyMealsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyMeals',
      theme: ThemeData(
          fontFamily: 'Railway',
          primaryColor: Colors.blue,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(color: Color.fromRGBO(20, 51,51,1)),
              body2: TextStyle(color: Color.fromRGBO(20,51,51,1)),
            title: TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold
            )
          ),
      ),
      //home: CategoriesScreen(),
      routes: {
        '/' : (ctx) => CategoriesScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName : (ctx) => MealDetailScreen(),
      },
      /*onGenerateRoute: (settings){
        return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      },*/
      onUnknownRoute: (settings){
        return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      },
    );
  }
}
