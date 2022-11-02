import 'package:flutter/material.dart';

import 'HomePage.dart';
import 'navpages/favorite.dart';
List<String> favlist=[];
List<Map<String,dynamic>> fav=[];

class SubPage extends StatefulWidget {
   SubPage( {Key? key, required this.price,required this.url,required this.text, }) : super(key: key);
  var price;
   var url;
   var text;

// SubPage(this.item);
  @override
  State<SubPage> createState() => _SubPageState();
}

class _SubPageState extends State<SubPage> {
  int count = 1;

  void _increment() {
    setState(() {
      count++;
    });
  }

  void _decrement() {
    setState(() {
      if (count != 1) {
        count--;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    double rate= widget.price*count ;
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 60, left: 20),
                  child: IconButton(
                    icon: new Icon(Icons.arrow_back_ios_sharp),
                    iconSize: 20,
                    onPressed: () {
                      Navigator.of(context).pop(
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                  )

              ),
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 150),
                child: IconButton(
                  icon: new Icon(Icons.card_travel),
                  iconSize: 20,
                  onPressed: () {

                  },
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(right: 20, top: 60),
                  child: IconButton(
                    icon: new Icon(favlist.contains(widget.text)?Icons.favorite:Icons.favorite_border,color: Colors.red,),
                    iconSize: 20,
                    onPressed: () {
                      setState((){});

                      if(favlist.contains(widget.text)) {
                        fav.removeWhere((k) => k["name"]==widget.text);
                        favlist.remove(widget.text);


                          final snackBar = SnackBar(
                          backgroundColor: Colors.white,
                          content: const Text('this item remove from wishlist',
                          style: TextStyle(color: Colors.black),),
                          action: SnackBarAction(

                          textColor: Colors.black,
                           label: 'Undo',
                           onPressed: () {
                           },
                            ),
                            );
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                           }
                      else{
                          fav.add({
                          'img': widget.url,
                          'name': widget.text,
                          'price': widget.price
                        });
                        favlist.add(widget.text);


                        final snackBar = SnackBar(
                        backgroundColor: Colors.white,
                        content: const Text('this item added to wishlist',
                        style: TextStyle(color: Colors.black),),
                        action: SnackBarAction(

                        textColor: Colors.black,
                        label: 'Undo',
                        onPressed: () {
                        // Some code to undo the change.
                        },
                        ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }

                      },
                  ),



              ),
            ],
          ),
          SizedBox(height: 30,),
          Center(
            child: Container(
              height: 200,
              width: 200,

              child: Image.network(widget.url,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(height: 10,),

          Center(
            child: Container(
              width: 120,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.amber,

              ),
              child: Row(

                children: [

                  Padding(
                    padding: const EdgeInsets.only(
                        left: 9, bottom: 15, right: 13,top: 11),
                    child: InkWell(
                        onTap: _decrement,

                        child: Icon(Icons.remove)),
                  ),
                  SizedBox(width: 10,),

                  Text(count.toString(), style: TextStyle(fontSize: 20),),
                  SizedBox(width: 10,),


                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: InkWell(
                        onTap: _increment,
                        child: Icon(Icons.add)),
                  ),

                ],

              ),
            ),
          ),


          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [


                Text(widget.text, style: TextStyle(fontSize: 25,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.bold),),

                Padding(
                  padding: const EdgeInsets.only(right: 15, top: 10),
                  child: Container(
                    child: Row(
                      children: [
                        Text("\$", style: TextStyle(
                            color: Colors.yellow, fontSize: 17
                        ),),

                        Text(rate.toString(),
                          style: TextStyle(fontSize: 25, fontWeight: FontWeight
                              .bold),),
                      ],
                    ),
                  ),
                ),



              ],
            ),
          ),
          SizedBox(height: 9,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 20,
                ),
              ),
              Text("2.4", style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(width: 180,),
              RaisedButton(
                  color: Colors.amber,
                  child: Text('Add to Cart'),
                  onPressed: () {
                    // The function showDialog<T> returns Future<T>.
                    // Use Navigator.pop() to return value (of type T).
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Alert'),
                        content: Text(
                          'Do you want to add this item to cart',
                        ),
                        actions: <Widget>[
                          FlatButton(
                            child: Text('No'),
                            onPressed: () => Navigator.pop(context, 'No'),
                          ),
                          FlatButton(
                            child: Text('Yes'),
                            onPressed: () => Navigator.pop(context, 'Yes'),
                          ),
                        ],
                      ),
                    ).then((returnVal) {
                      if (returnVal != null) {
                        Scaffold.of(context).showSnackBar(
                          SnackBar(
                            content: Text('You clicked : $returnVal'),
                            action: SnackBarAction(label: 'Yes', onPressed: () {}),
                          ),
                        );
                      }
                    });
                  })
            ],
          ),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Details",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                SizedBox(height: 9,),
                Text(
                  "Noodles are a type of food made from un leaven -ed dough which is rolled flat and cut, stretched or extru -ded, into long strips or strings. ",
                  style: TextStyle(
                      fontFamily: "Montserrat", fontWeight: FontWeight.bold),),
                SizedBox(height: 9,),
                Text("Ingredients",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                Row(
                  children: [
                    Container(
                        height: 100,
                        width: 90,
                        child: Image(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDeh-cnTT5Th-5vY4SNWykhoGLQlr_OHc25Q&usqp=CAU"))),
                    SizedBox(width: 10,),
                    Container(
                        height: 70,
                        width: 80,
                        child: Image(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZfLKECFiwQUMtbUGQ5ykPq0jo6B5DKbNBoA&usqp=CAU"))),
                    Container(
                        height: 70,
                        width: 80,
                        child: Image(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5tm42Gs6nPbrmvKTLewCHYXiJXuX0q_0hdw&usqp=CAU"))),
                    Container(
                        height: 70,
                        width: 80,
                        child: Image(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrBfg-wTA0iUfkXR8EHt5VZslWD9zu63cF4Q&usqp=CAU"))),


                  ],
                ),


              ],
            ),
          ),
        ],

      ),
    );
  }
}
