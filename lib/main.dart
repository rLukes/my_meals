import 'package:flutter/material.dart';
import './categories_screen.dart';

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
      home: CategoriesScreen(),
    );
  }
}
