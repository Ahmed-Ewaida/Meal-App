import 'package:flutter/material.dart';

import '../Models/dummy_meal.dart';
import '../data.dart';
class MealItem extends StatelessWidget {
  const MealItem({super.key, required this.meal});
 final Meal meal;
  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
    //  mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 500,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
            image: DecorationImage(image: AssetImage(meal.imageUrl),fit: BoxFit.fill,)
          ),
        ),
        Divider(
          color:Colors.black ,
          indent: 15,
          thickness: 5,
          endIndent: 15,
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(" description : ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            Text(" ${meal.description} ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
          ],

        ),
        Divider(
          color:Colors.black ,
          indent: 15,
          thickness: 5,
          endIndent: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Text(" Timer : ${meal.time} ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                Icon(Icons.timer),
              ],
            ),
            Row(
              children: [
                Text(" Salary :  ${meal.salary} ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                Icon(Icons.monetization_on),
              ],
            ),
          ],

        ),
      ],
    );
  }
}
