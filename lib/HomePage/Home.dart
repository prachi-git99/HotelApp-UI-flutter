import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syle/HomePage/homeScreen.dart';
import 'package:syle/ProfilePage/profileScreen.dart';
import 'package:syle/SearchPage/searchScreen.dart';
import 'package:syle/consts/colors.dart';
import 'package:syle/consts/styles.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var currentNavIndex=0.obs;

    var navbarItem=[
      BottomNavigationBarItem(icon:Icon(Icons.home, size: 26,),label:"Home"),
      BottomNavigationBarItem(icon:Icon(Icons.search, size: 26,),label:"Search"),
      BottomNavigationBarItem(icon:Icon(Icons.person_2_rounded, size: 26,),label:"Profile"),

    ];
    var navBody =[
      HomeScreen(),
      SearchScreen(),
      ProfileScreen()
    ];
    return WillPopScope(
      onWillPop: ()async{
        return false;
      },
      child: Scaffold(
        body:Column(
          children: [
            Obx(()=>Expanded(
              child: navBody.elementAt(currentNavIndex.value),
            ),
            ),
          ],
        ),
        bottomNavigationBar: Obx(()=>
            BottomNavigationBar(
                currentIndex:currentNavIndex.value,
                selectedItemColor: purple,
                selectedLabelStyle: TextStyle(fontFamily: semibold),
                backgroundColor: Colors.white,
                type: BottomNavigationBarType.fixed,
                onTap: (value){
                  currentNavIndex.value=value;
                },
                items:navbarItem),
        ),
      ),
    );
  }
}
