import 'package:flutter/material.dart';


class Details extends StatelessWidget {
  const Details({ required this.id, required this.name, required this.image,});
final String id;
final String name;
final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, "meal",arguments:{
          "id":id,
          "name":name,
        });
      },
      child: Container(
          margin: EdgeInsets.all(7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(120),bottomLeft: Radius.circular(30),topRight: Radius.circular(30),bottomRight: Radius.circular(120)),
              image: DecorationImage(image: AssetImage("$image",),fit: BoxFit.fill)
          ),
          height: 300,

          child:Container(
            alignment: Alignment.bottomCenter,
            height: 200,
            width: double.infinity,
            child:  Text("$name",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color(
                0xFFFFFFFF)),),
          )
      ),
    );
  }
}
