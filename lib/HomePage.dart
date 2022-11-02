
import 'package:flutter/material.dart';
import 'package:untitled/Subpage.dart';
import 'package:untitled/logout.dart';
import 'package:untitled/navpages/favorite.dart';
import 'package:untitled/navpages/profile.dart';
import 'package:untitled/orders.dart';
import 'package:untitled/settings.dart';
import 'item.dart';



class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);

   List<Item> _categories=[
     Item(url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZztG-UiKKGEw8z_3DXtOMavLHh0-Av0x6CQ&usqp=CAU",text:"noodles",price:6.31),
     Item(url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLfKKbvi21Eh1BJWHx2udn2VUFpBHFT_zlqg&usqp=CAU",text:"taco",price:3.11),
     Item(url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9EHhvW1tvx3N8nVDZcLxeqeFnvPsLOjj-UQ&usqp=CAU",text:"cup cake",price:5.1),
     Item(url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHWNc3jwAdyMBycMvDFrYlDh8bnZVJ7x5RUA&usqp=CAU",text:"pizza",price:6.43),
     Item(url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdseYD98Q8BiiApUIi4mc-Vk2tOMx8w7uSEQ&usqp=CAU",text:"burger",price:4.33),
     Item(url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuzey2z5IbHchoTYi4t3vptn6wlM1TlUpSIg&usqp=CAU",text:"Sandwich",price:7.23),
     Item(url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBtWS_ruCk3pTC2fEQLy3fRtFUrMjLw21vXA&usqp=CAU",text:"fried chicken ",price:4.12),
   ];


  @override
  Widget build(BuildContext context) {
    var h=MediaQuery.of(context).size.height;
    var w=MediaQuery.of(context).size.width;
    var length;
    return Scaffold(
      backgroundColor:Colors.white12,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white30,
        title:  Text("search food",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 25),),
        centerTitle: true,
        elevation: 0,

        actions: [
        InkWell(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Profile()));
          },
          // child: Container(
          //   width: 50,
          //   height: 50,
          //   decoration: BoxDecoration(
          //
          //     borderRadius: BorderRadius.circular(10),
          //     color: Colors.white,
          //     image: DecorationImage(
          //       image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzLtAygJVVxgQEdjZ564jhlSn49R1gNV4Uyw&usqp=CAUss"),
          //     ),
          //
          //
          //   ),
          // ),
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: CircleAvatar(
              backgroundImage:  NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzLtAygJVVxgQEdjZ564jhlSn49R1gNV4Uyw&usqp=CAU"),
             radius: 25,

            ),
         ),
        ),
        ],
      ),
      drawer: Drawer(

      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: <Widget>[
      //       DrawerHeader(
      //         child: CircleAvatar(
      //           backgroundImage:  NetworkImage(
      //       "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzLtAygJVVxgQEdjZ564jhlSn49R1gNV4Uyw&usqp=CAU"),
      //
      //   radius: 50,
      // ),
      //         ),
      //
      //       ListTile(
      //         title: Text('Item 1'),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         title: Text('Item 2'),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //     ],
      //   ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 46,),
            CircleAvatar(
                      backgroundImage:  NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzLtAygJVVxgQEdjZ564jhlSn49R1gNV4Uyw&usqp=CAU"),
              radius:35,
            ),
              SizedBox(height: 30,),
              Text("Kim Tae-hyung",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(height: 5,),

              Text("KimTae-hyung123@gmail.com",style: TextStyle(color: Colors.grey),),
              SizedBox(height: 10,),
              Divider(),
              SizedBox(width: 20),

          ListTile(
            leading: Icon(Icons.person),
                    title: Text('My Profile'),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Profile()));
                    },
                  ),
              ListTile(
                leading: Icon(Icons.card_travel_sharp),
                title: Text('My Orders'),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Order()));
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Settings()));
                },
              ),
              ListTile(
                leading: Icon(Icons.logout_outlined),

                title: Text('Logout'),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Logout()));
                },
              ),


            ],
          ),
        ),

      ),




      body: Column(
        children: [

          // Container(
          //   padding: EdgeInsets.only(top: 50,left: 20),
          //   child: Row(
          //
          //     children: [
          //        // Icon(Icons.arrow_back_ios_sharp,size: 25,color: Colors.black,),
          //
          //       Padding(
          //         padding: const EdgeInsets.only(left:70),
          //         child: Text("search food",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.only(left: 60),
          //         child: InkWell(
          //           onTap: (){
          //             Navigator.of(context).push(MaterialPageRoute(
          //                 builder: (context) => Profile()));
          //           },
          //           child: Container(
          //             width: 50,
          //             height: 50,
          //             decoration: BoxDecoration(
          //
          //               borderRadius: BorderRadius.circular(10),
          //               color: Colors.grey,
          //               image: DecorationImage(
          //                 image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSULVKfSgLJuOk1h3aELk0zTCAqCbz1tiVbXA&usqp=CAU"),
          //               ),
          //
          //
          //             ),
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          Container(
            margin: EdgeInsets.only(left: 20,top: 40,right: 20,bottom: 30),
            decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child:
            Row(
              children: [
                Icon(Icons.search),
                Flexible(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'search',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  height: h*0.060,
                  width: w*0.120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.yellow,
                  ),
                  child:IconButton(
                    icon: new Icon(Icons.shopping_cart),
                    iconSize: 20,
                    onPressed: () {},
                  )
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Text("50% OFF &",
                      style: TextStyle(
                          color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 25),),
                    Text("get free delivery",
                        style: TextStyle(
                            color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 25)),
                    SizedBox(height:14,),
                    Text("use coupon:",style: TextStyle(
                      color: Colors.blueGrey,)),
                    SizedBox(height:2,),

                    Text("WELCOME50",style: TextStyle(
                        color: Colors.blueGrey,fontWeight: FontWeight.bold)),


                  ],
                ),
              ),
              Container(
                height: 200,
                width: 330,
                decoration: BoxDecoration(

                  color: Colors.blueGrey.withOpacity(0.6),

                  borderRadius: BorderRadius.circular(20),
                ),

              ),
              Positioned(
                right: 0,
                bottom: 0,
                top: 70,


                child: Container(
                    height: 300,
                    width: 280,
                    child: Image(image: AssetImage("assets/pizza.png"),)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 150,left: 20),
                child: Container(
                  height: 36,
                  width: 50,
                  child: Icon(Icons.arrow_forward,color: Colors.blueGrey,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white30,
                  ),
                ),
              ),
            ],
          ),
          Row(
mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(left: 15)),
              Text("Found \n 80 results ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

            ],
          ),
          Expanded(
              child:Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: GridView.builder(

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio:0.7,
                      crossAxisCount: 2,
                    crossAxisSpacing: 30,
                     mainAxisSpacing:1,
                  ),

            itemCount: _categories.length,
            itemBuilder: (context,index) {
                // Item item = _categories[index];
                return Card(
                   elevation: 0,
                  shadowColor: Colors.grey[600],
                  margin: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: Container(
                    height: 170,
                    width: 80,

                    child:
                    Expanded(
                      child: Column(
                        children: [

                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => SubPage(url: _categories[index].url, price: _categories[index].price, text: _categories[index].text,)));
                              },
                              child: Container(
                                height: 100,
                                width: 100,
                                child: Expanded(
                                  child: ClipOval(

                                    child: AspectRatio(
                                      aspectRatio: 1,
                                      child: Image.network(
                                        _categories[index].url,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // SizedBox(height: 30,),
                          Text( _categories[index].text,
                            style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 2),
              Padding(
                padding: const EdgeInsets.only(left: 45),
                child: Container(
                child: Row(
                children: [
                Text("\$",style: TextStyle(
                color:Colors.yellow,fontSize: 17
                ),),

                Text(_categories[index].price.toString(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),



                          ],
                        ),
                      ),
              ),
                           SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:List.generate(5, (index) =>Icon(
                              index <4 ? Icons.star :Icons.star_border,
                            color: Colors.yellow,size: 15,
                            ))
                          ),
                    ]
                ),
                ),
              ),
              );

            }
          ),
              )
          ),
        ],
      ),
    );
  }


}


