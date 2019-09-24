import 'package:flutter/material.dart';
import './categories_screen.dart';

void main(){
  runApp(MyMealsApp());
}

class MyMealsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyMeals',
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home: CategoriesScreen(),
    );
  }
}