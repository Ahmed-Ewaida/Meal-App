import 'package:flutter/material.dart';
import 'package:meal_app/data.dart';
import 'package:meal_app/Widgets/details.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6A9AB0),
        appBar: AppBar(
          backgroundColor: Color(0xff001F3F),
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Meal ",
                style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold ,color: Color(0xff6A9AB0)),
              ),
              Text("App",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600 ,color: Color(0x942e756d))),
            ],
          ),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Details(
                id: "${CATEGORIES[index].id}",
                name: "${CATEGORIES[index].name}",
                image: "${CATEGORIES[index].image}",
                );
          },
          itemCount: CATEGORIES.length,
        ));
  }
}
