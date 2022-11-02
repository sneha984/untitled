// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// // import 'package:untitled/Subpage.dart';
// //
// // import '../item.dart';
// //
// //
// // class Favorite extends StatelessWidget {
// //   final Item item;
// //
// // Favorite(this.item);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return  Scaffold(
// //         appBar: AppBar(
// //           title: Text("Movies"),
// //           centerTitle: true,
// //         ),
// //         body:ListView.builder(itemCount: item.length,itemBuilder: (context,index){
// //           return Card(
// //             child: ListTile(
// //               title: Text(item.text),
// //               subtitle: Text(item.price),
// //               leading: Image.network(item.url),
// //               trailing: Icon(Icons.arrow_forward_rounded),
// //               onTap: (){
// //                 Navigator.of(context).pop(MaterialPageRoute(builder: (context)=>SubPage(item)));
// //               },
// //             ),
// //           );
// //         })
// //     );
// //   }
// // }
// //
// //
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import '../HomePage.dart';
//
// class Favorite extends StatelessWidget {
//   const Favorite({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     Size size=MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: Colors.lightGreen[400],
//       appBar: AppBar(
//         backgroundColor: Colors.lightGreen[400],
//         elevation: 0,
//         leading:
//            Padding(
//              padding: const EdgeInsets.all(25.0),
//              child: Icon(Icons.arrow_back_ios_sharp,size: 20,color: Colors.white,),
//            ),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.all(25.0),
//             child: Icon(Icons.card_travel_outlined,size: 20,color: Colors.white),
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: SizedBox(
//           height: size.height,
//           child: Stack(
//             children: [
//               Container(margin: EdgeInsets.only(top: size.height *0.3),
//                  height: 500,
//                 width: MediaQuery.of(context).size.width,
//                 decoration: BoxDecoration(color: Colors.white,
//                 borderRadius: BorderRadius.only(topLeft: Radius.circular(24),topRight: Radius.circular(24))),
//                child: Padding(
//                  padding: const EdgeInsets.only(left: 30,right: 10),
//                  child: Column(
//                    mainAxisSize: MainAxisSize.max,
//                    crossAxisAlignment: CrossAxisAlignment.start,
//                    children: [
//                      SizedBox(height: 30,),
//                      Text("Particulars",style: TextStyle(fontSize: 25,),),
//                      SizedBox(height: 10,),
//                      Text("The speciality of this shop is fresh cream ice cream  with a full cup of tea. Ice drink is more delicious summer must be yo~",
//                       style: TextStyle(fontWeight: FontWeight.w200),
//                      ),
//                      SizedBox(height: 20,),
//                      Row(
//                          mainAxisAlignment: MainAxisAlignment.start,
//                          children:List.generate(5, (index) =>Padding(
//                            padding: const EdgeInsets.only(right: 10),
//                            child: Icon(
//                               Icons.star ,
//                              color: Colors.lightGreen[400],size: 18,
//                            ),
//                          ))
//                      ),
//                      SizedBox(height: 20,),
//                      Row(
//                        children: [
//                          Container(
//                            height: 70,
//                            width: 70,
//                            decoration: BoxDecoration(
//                              color: Colors.lightGreen.withOpacity(0.3),
//
//                              borderRadius: BorderRadius.circular(20),
//                            ),
//                          ),
//                          SizedBox(width: 15,),
//                          Container(
//                            height: 70,
//                            width: 70,
//                            decoration: BoxDecoration(
//                              color: Colors.lightGreen.withOpacity(0.3),
//
//                              borderRadius: BorderRadius.circular(20),
//                            ),
//                          ),
//                          SizedBox(width: 15,),
//
//                          Container(
//                            height: 70,
//                            width: 70,
//                            decoration: BoxDecoration(
//                              color: Colors.lightGreen.withOpacity(0.3),
//
//                              borderRadius: BorderRadius.circular(20),
//                            ),
//                          ),
//                        ],
//                      ),
//                      SizedBox(height: 20,),
//
//                      Text("Service",style: TextStyle(fontSize: 25,),),
//                      SizedBox(height: 10,),
//
//                      Text("Businesses give it away for free", style: TextStyle(fontWeight: FontWeight.w200),),
//                      Text("Minus 2 yuan for every 30 yuan of goos", style: TextStyle(fontWeight: FontWeight.w200),),
//                      SizedBox(height: 5,),
//
//                      Divider(),
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceAround,
//                        children: [
//                          Icon(Icons.edit,color: Colors.grey,),
//                          Icon(Icons.favorite_border,color: Colors.grey,),
//                          Container(
//                            height: 55,
//                            width: 140,
//                            decoration: BoxDecoration(
//                              color: Colors.lightGreen[400],
//                              borderRadius: BorderRadius.circular(40),
//                            ),
//                            child: Padding(
//                              padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 15),
//                              child: Text("Purchased",style: TextStyle(color: Colors.white,fontSize: 18),),
//                            ),
//                          ),
//
//
//                        ],
//                      ),
//
//
//
//                    ],
//                  ),
//                ),
//
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 30),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SizedBox(height: 40,),
//                     Text("Green tea",style: TextStyle(fontSize: 37,fontWeight: FontWeight.w500,color: Colors.white),),
//                     Text("Signature product",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w200,color: Colors.white),),
//                     SizedBox(height: 40,),
//
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text("\$",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
//                         Text("36",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white,fontSize: 55),),
//
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               Positioned(
//                 right: 0,
//                 child: Container(
//                     height: 300,
//                     width: 200,
//                     child: Image(image: AssetImage("assets/green.png"),)
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:untitled/Subpage.dart';
class Favorite extends StatefulWidget {
  Favorite( {Key? key }) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

          appBar: AppBar(title: Text("Wishlist",style: TextStyle(fontSize:20,color: Colors.black ),
          ),
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
            leading: IconButton(
              icon: new Icon(Icons.arrow_back_ios,color: Colors.black,),
              iconSize: 20,
              onPressed: () {

              },
            ),
          ),
            body:ListView.builder(
                itemCount: fav.length,
                itemBuilder: (context,index){
              return Container(
                margin: EdgeInsets.only(top: 20,left: 10,right: 10),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Card(
                  surfaceTintColor: Colors.black,
                  shadowColor: Colors.white10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ListTile(
                    title: Text(fav[index]['name']),
                    subtitle: Text(fav[index]['price'].toString()),
                    leading: Container(
                        height: 100,
                        width: 100,
                        child: ClipOval(child: AspectRatio(
                            aspectRatio: 1,
                            child: Image.network(fav[index]['img'])))),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SubPage(url:fav[index]['img'], price: fav[index]['price'], text: fav[index]['name'])));

                    },
                  ),
                ),
              );
            },
            ),

    );
  }
}


