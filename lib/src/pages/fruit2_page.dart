import 'package:flutter/material.dart';

class FruitToCart extends StatelessWidget {
 



  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Column(

        children: <Widget>[
          IconButton(icon: Icon(Icons.arrow_back), onPressed: (){Navigator.pop(context);}),
          Container(
            child:Hero(tag: '1',
            child: Image(image: NetworkImage("https://images.pexels.com/photos/1437587/pexels-photo-1437587.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"))) ,
          ),
        ],
      ),
    );
  }
}