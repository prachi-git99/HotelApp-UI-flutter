import 'package:flutter/material.dart';
import 'package:syle/consts/colors.dart';
import 'package:velocity_x/velocity_x.dart';

Widget SyloBox(size,color1,color2,text){
  return Stack(
    children: [
      Container(
        margin: EdgeInsets.only(left:15,right:15),
        child: Container(
          width:size.width/2,
          height: size.height/6,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [BoxShadow(
              color: Colors.grey,
              blurRadius: 6.0,
            )],
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [color1,color2]
            ),
          ),
          child: Center(child: "${text}".text.size(22).color(Colors.black).fontWeight(FontWeight.bold).make(),),
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 30,top:100),
        width: size.width/2.5,
        height: size.height/22,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [purple,pink,darkpink,lightpurple]
          ),
        ),
        child: Align(alignment:Alignment.center,child: "Get this Package".text.white.fontWeight(FontWeight.w500).make()),
      )
    ],
  );
}