import 'package:flutter/material.dart';
import 'package:meal_app/Widgets/details_items.dart';
import '../Models/dummy_meal.dart';
import '../data.dart';


class MealDetails extends StatelessWidget {
  const MealDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    String name = data["name"];
    String id = data["id"];

    List<Meal> dataFilter = DUMMY_MEAL.where((element) {
      return element.categoryNumber.contains(id);
    }).toList();
    return Scaffold(
        backgroundColor: Color(0xff6A9AB0),
        appBar: AppBar(
          backgroundColor: Color(0xff001F3F),
          centerTitle: true,
          title: Text("$name",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold ,color: Color(0xff6A9AB0))),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return DetailsItems(meal:dataFilter[index]);
          },
          itemCount: dataFilter.length,
        ));
  }
}
