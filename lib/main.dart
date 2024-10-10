import 'package:flutter/material.dart';
import 'package:meal_app/Screens/home_screen.dart';
import 'package:meal_app/Screens/meal_item_screen.dart';
import 'package:meal_app/Screens/meal_screen.dart';


main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "meal":(context)=>MealDetails(),
         "mealItem":(context)=>MealItemScreen(),
      },
      debugShowCheckedModeBanner: false,
      home:HomeScreen()
    );
  }
}
