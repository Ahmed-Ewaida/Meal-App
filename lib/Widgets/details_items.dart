import 'package:flutter/material.dart';
import 'package:meal_app/Models/dummy_meal.dart';
class DetailsItems extends StatelessWidget {
  const DetailsItems({super.key, required this.meal});
  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
         Navigator.pushNamed(context,"mealItem",arguments: meal);
      },
      child: Container(
          margin: EdgeInsets.all(7),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30),bottomLeft: Radius.circular(120),topRight: Radius.circular(120),bottomRight: Radius.circular(30)),

              image: DecorationImage(image: AssetImage("${meal.imageUrl}",),fit: BoxFit.fill)
          ),
          height: 300,

          child:Container(
            alignment: Alignment.bottomCenter,
            height: 200,
            width: double.infinity,
            child:  Text("${meal.title}",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color(
                0xFFFFFFFF)),),
          )
      ),
    );
  }
}
