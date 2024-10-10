import 'package:flutter/material.dart';
import 'package:meal_app/Widgets/meal_item.dart';
import 'package:meal_app/data.dart';
import '../Models/dummy_meal.dart';
class MealItemScreen extends StatelessWidget {
  const MealItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var data=ModalRoute.of(context)!.settings.arguments as Meal;
    List<Meal> mealFilter=DUMMY_MEAL.where((element){
      return element.id.contains(data.id);
    }).toList();
    return Scaffold(
        backgroundColor: Color(0xff6A9AB0),
        appBar: AppBar(
          backgroundColor: Color(0xff001F3F),
          centerTitle: true,
        title: Text("${data.title}",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold ,color: Color(0xff6A9AB0))),
      ),
      body: MealItem(meal: mealFilter.first)
    );
  }
}
