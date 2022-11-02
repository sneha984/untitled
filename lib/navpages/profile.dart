
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../HomePage.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with TickerProviderStateMixin {
   late TabController _tabController;
// var _value=1;
//    bool _value=false;
   String groupValue='card';


  @override
  void initState() {

    _tabController = new TabController(length: 3, vsync: this);

    super.initState();
  }

  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
       body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
              IconButton(
                icon: new Icon(Icons.arrow_back_ios_sharp),
                iconSize: 20,
                onPressed: () {
                  Navigator.of(context).pop(MaterialPageRoute(builder: (context)=>HomePage()));
                },

              ),
                    Text("My Profile",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                    IconButton(
                      icon: new Icon(Icons.edit),
                      iconSize: 20,
                      onPressed: () {},
                    ),
                  ],
    ),
            ),
            // SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(top:10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                    image: DecorationImage(
                      image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzLtAygJVVxgQEdjZ564jhlSn49R1gNV4Uyw&usqp=CAU"),
                        fit: BoxFit.fill
                    ),

                ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Kim Tae-hyung ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      SizedBox(height: 10,),
                      Text("Seo District, Daegu, South Korea \n  ",style: TextStyle(fontFamily: "Montserrat",fontSize: 15,),)
                    ],
                  ),
                ],
              ),
            ),


Padding(
  padding: const EdgeInsets.only(top: 20),
  child:   SizedBox(
    height: 30,
    child: TabBar(
      isScrollable: true,
      unselectedLabelColor: Colors.black,
      labelColor: Colors.black,
      controller: _tabController,
      indicatorColor: Colors.amber,
      indicatorWeight: 2,
      // indicator: BoxDecoration(
      //   color: Colors.red[300],
      //   borderRadius: BorderRadius.circular(30),
      // ),
      tabs: [
      Tab(text: "Account",),
      Tab(text: "Payment method",),
      Tab(text: "History",),
    ],),
  ),
),
            Expanded(
                child:TabBarView(
                  controller: _tabController,
                  children: [
                    Container(),
                    Container(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20,left: 20),
                              child: Text("My Cards",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                            ),

    Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
          child: Container(

          width: 280,
          height: 150,
          decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(10),
          color: Colors.grey,
          image: DecorationImage(
          image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTll-PNG0JYOEgui1OIHNXt5J9ErcgS1C1Plw&usqp=CAU"),
          fit: BoxFit.fill),
          ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top:60 ),
          child: CircleAvatar(
            radius: 20.0,
            backgroundColor: Colors.amber,
            child: Icon(Icons.add,size: 30,color: Colors.black,),
          ),
        ),

      ],
    ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                              child: Text("Add new Card",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                            ),
                          SizedBox(height: 10,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,

                                children: [
                                  Container(
                                      height: 50,
                                      width: 50,
                                      child: Image(
                                          image: NetworkImage(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0pEw7N6OngOHy5tdAtUhbr_YXJRCr5ornIg&usqp=CAU"))),
                                  SizedBox(width: 10,),

                                  Text("Google Pay"),
                                  SizedBox(width: 135,),

                                  Radio(activeColor: Colors.amber,

                                    value: "Google Pay", groupValue:groupValue, onChanged:(value){
                                    setState((){
                                    groupValue=value.toString();
                                    });
                                  },),
                                  SizedBox(width: 10.0,),


                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,



                                children: [
                                  Container(
                                      height: 50,
                                      width: 50,
                                      child: Image(
                                          image: NetworkImage(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsjHTHD5T1mFOZsCqkNMfujHaX6BYxFxGkXQ&usqp=CAU"))),
                                  SizedBox(width: 10,),

                                  Text("Credit Card"),
                                  SizedBox(width: 138,),

                                  Radio(
                                    activeColor: Colors.amber,
                                    value: "Credit Card", groupValue:groupValue, onChanged:( value){
                                    setState((){
                                      groupValue=value.toString();
                                    });
                                  },),
                                  SizedBox(width: 10.0,),



                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,

                                children: [
                                  Container(
                                      height: 50,
                                      width: 50,
                                      child: Image(
                                          image: NetworkImage(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3SGUreVD7pVxevpSTYkUDPhZsoFycafhxEA&usqp=CAU"))),
                                  SizedBox(width: 10,),
                                  Text("Apple Pay"),
                                  SizedBox(width: 143,),
                                  Radio( activeColor: Colors.amber,

                                    value: "Apple Pay", groupValue:groupValue, onChanged:( value){
                                    setState((){
                                      groupValue=value.toString();
                                    });
                                  },),
                                  SizedBox(width: 10.0,),


                                ],
                              ),



                            ],
                          ),
                            SizedBox(height: 15,),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Container(
                                width: 300,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.amber,

                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 130,vertical: 17),
                                  child: Text("Add",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                                ),
                              ),
                            ),


                           ],
                        ),
                      ),
                    ),
                    Container(

                    ),
                  ],
                )
            ),
          ],
        ),
    );
  }
}
