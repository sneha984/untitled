import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/HomePage.dart';
import 'package:untitled/navpages/profile.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

import 'cartpage.dart';
import 'favorite.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages=[
    HomePage(),
     Favorite(),
    CartPage(),
    Profile(),
  ];
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavyBar(

        selectedIndex: currentIndex,
        onItemSelected: (index){
          setState((){
            currentIndex=index;
          });
        },

        items: <BottomNavyBarItem> [

        BottomNavyBarItem(icon:Icon(Icons.home_outlined,color: Colors.black54,), title:Text("Home"),activeColor: Colors.black54),
         BottomNavyBarItem(icon:Icon(Icons.favorite_border,color: Colors.black54,), title:Text("favorite"),activeColor: Colors.black54),
        BottomNavyBarItem(icon:Icon(Icons.shopping_cart_outlined,color: Colors.black54,), title:Text("cart"),activeColor: Colors.black54),
        BottomNavyBarItem(icon:Icon(Icons.account_circle,color: Colors.black54,), title:Text("profile"),activeColor: Colors.black54),

        ],
      ),
    );
  }
}
