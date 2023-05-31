import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:syle/consts/colors.dart';
import 'package:syle/consts/lists.dart';
import 'package:syle/consts/styles.dart';
import 'package:syle/widgets/diagonalLines.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            //header section
            Container(
              height: size.height/6,
              child: Column(
                children: [
                  Container(
                    height: size.height/12,
                    color: purple,
                  ),
                  Container(
                    height: size.height/12,
                    color: purple,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:EdgeInsets.only(left:15,),
                          child: Icon(Icons.pin_drop_outlined,color:Colors.white,size:40,),
                        ),
                        Container(
                          color: purple,
                          // width: size.width/2,
                          padding: EdgeInsets.only(left:2,),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("Current Location",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400
                                      )
                                  ),
                                  Icon(Icons.keyboard_arrow_down,color: Colors.white,size:20,)
                                ],
                              ),
                              SizedBox(height:5,),
                              Text("HSR Layout, Bangaluru",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                  )
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/images/header_logo.png",height:size.height/12,width: size.width/4,),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            20.heightBox,
            //search bar section
            Container(
              alignment: Alignment.center,
              height:size.height/14,
              width: size.width - 40,
              child: TextFormField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color:purple),
                      borderRadius: BorderRadius.circular(50),
                  ),
                  suffixIcon: Container(
                    padding: EdgeInsets.only(right:10),
                    child: Icon(Icons.search,size:28,color: purple,),
                  ),
                  filled: true,
                  fillColor: whiteColor,
                  hintText:" Search for venues",
                  hintStyle: TextStyle(
                    color: textfieldGrey,
                    fontWeight: FontWeight.w400,
                    fontSize:16
                  ),
                ),
              ).box.outerShadowSm.make(),
            ),
            20.heightBox,
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Offer section
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 30,right: 15),
                            height: size.height/3.5,
                            width: size.width/1.2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [purple,Vx.purple500]
                              ),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    width: size.width/2.5,
                                    height: size.height/6,
                                  ),
                                ),
                                Container(
                                  width: size.width,
                                  margin: EdgeInsets.only(left: 20,right:20,top:30),
                                  height: size.height,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      "Get".text.white.fontWeight(FontWeight.w300).size(23).make(),
                                      "50% off".text.white.fontWeight(FontWeight.bold).size(28).make(),
                                      "On your First Celebration".text.white.fontWeight(FontWeight.w300).size(20).make(),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20,top:size.height/7),
                                  width: size.width,
                                  height: size.height/6,
                                  child: Row(
                                    children: [
                                      ElevatedButton(
                                          onPressed:(){},
                                          child:"Claim Now".text.color(purple).fontWeight(FontWeight.w400).make(),
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.white
                                          )
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: size.height/3.5,
                            width: size.width/1.2,
                            margin: EdgeInsets.only(left:15,right: 30),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child:Image.asset(
                                    "assets/images/candlelight.jpg",width:size.width,height: size.height,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  width: size.width,
                                  margin: EdgeInsets.only(left: 20,right:20,top:30),
                                  height: size.height,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      "What's the occasion?".text.white.fontWeight(FontWeight.w300).size(14).make(),
                                      "Candlelight Dinner".text.white.fontWeight(FontWeight.bold).size(30).make(),
                                      20.heightBox,
                                      ElevatedButton(
                                          onPressed:(){},
                                          child:"Grab 20% off now".text.color(purple).fontWeight(FontWeight.w400).make(),
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.white
                                          )
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                          ),
                        ],
                      ),
                    ),
                    15.heightBox,
                    //dot section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height:15,
                          width:50,
                          alignment: Alignment.topLeft,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.grey[400]
                          ),
                          child: Container(
                            height: size.height,
                            width:28,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: purple
                            ),
                          ),
                        ),
                        5.widthBox,
                        Container(
                          height:15,
                          width:15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.grey[400]
                          ),
                        ),
                        5.widthBox,
                        Container(
                          height:15,
                          width:15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.grey[400]
                          ),
                        ),
                        5.widthBox,
                        Container(
                          height:15,
                          width:15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.grey[400]
                          ),
                        ),

                      ],
                    ),
                    30.heightBox,
                    //text Dinesh, What's your occasion
                    Container(
                        alignment:Alignment.topLeft,
                        margin: EdgeInsets.only(left:30),
                        child: "Dinesh, What's your occasion?".text.fontWeight(FontWeight.bold).color(purple).size(16).make()
                    ),
                    20.heightBox,
                    //categories section
                    Padding(
                     padding: const EdgeInsets.only(left: 15,right:15),
                     child: SingleChildScrollView(
                       scrollDirection: Axis.horizontal,
                       physics: BouncingScrollPhysics(),
                       child: Row(
                         children:List.generate(5, (index) => Column(
                           children: [
                             Container(
                               margin: EdgeInsets.only(left:15,right:15),
                               child: Column(
                                 children: [
                                   Container(
                                     width:size.width/3.5,
                                     height: size.height/7,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(20),
                                     ),
                                     child: ClipRRect(borderRadius:BorderRadius.circular(20),child: Image.asset("assets/images/${imageList1[index]}",fit:BoxFit.cover)),
                                   ),
                                   5.heightBox,
                                   "${imageNameList1[index]}".text.color(purple).fontWeight(FontWeight.w500).make(),
                                 ],
                               ),
                             ),
                             20.heightBox,
                             Container(
                               margin: EdgeInsets.only(left: 10,right: 15),
                               child: Column(
                                 children: [
                                   Container(
                                     width:size.width/3.5,
                                     height: size.height/7,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(20),
                                     ),
                                     child: ClipRRect(borderRadius:BorderRadius.circular(20),child: Image.asset("assets/images/${imageList2[index]}",fit:BoxFit.cover)),
                                   ),
                                   5.heightBox,
                                   "${imageNameList2[index]}".text.color(purple).fontWeight(FontWeight.w500).make(),
                                 ],
                               ),
                             ),
                           ],
                         )),
                       ),
                     ),
                   ),
                    40.heightBox,
                    //text Most Popular venues
                    Container(
                        alignment:Alignment.center,
                        margin: EdgeInsets.only(left:30),
                        child: Row(
                          children: [
                            Icon(Icons.star,size:20,color: purple,),
                            5.widthBox,
                            "Most Popular venues".text.fontWeight(FontWeight.bold).color(purple).size(20).make(),
                            5.widthBox,
                            Icon(Icons.star,size:20,color: purple,),
                          ],
                        )
                    ),
                    30.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(3, (index) => Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left:15,right:15),
                              child: Column(
                                children: [
                                  Container(
                                    width:size.width/2.1,
                                    height: size.height/3.5,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: ClipRRect(borderRadius:BorderRadius.circular(20),child: Image.asset("assets/images/venue.jpg",fit:BoxFit.cover)),
                                  ),
                                  5.heightBox,
                                  Column(
                                    children: [
                                      "The Dome Cafe".text.color(purple).size(18).fontWeight(FontWeight.w500).make(),
                                      "The Dome Cafe".text.color(purple).size(18).fontWeight(FontWeight.w500).make(),
                                      "The Dome Cafe".text.color(purple).size(18).fontWeight(FontWeight.w500).make(),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                      ),
                    )

                  ],
                ),
              ),
            ),




          ],
        ),
      ),
    );
  }
}