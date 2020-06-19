import 'package:flutter/material.dart';
import 'package:fresco_app/model/product_model.dart';
import 'package:fresco_app/provider/shoppingcart_provider.dart';
import 'package:provider/provider.dart';


class FruitToCart extends StatelessWidget {
 



  @override
  Widget build(BuildContext context) {

final cart = Provider.of<ShoppingCartProvider>(context);
    final Fruit fruit = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: SingleChildScrollView(
              child: Column(

    children: <Widget>[
        Stack(
          children: <Widget>[
        
        Container(
          height: 600,
          width: double.infinity,
          child:Hero(tag: fruit.id,
          child: Image(image: NetworkImage(fruit.getImage()),fit: BoxFit.cover,)) ,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40, left: 20),
          child: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){Navigator.pop(context);}),
        ),
        Column(
          children: <Widget>[
            SizedBox(height:560),
            Container(

       decoration: BoxDecoration(
        borderRadius:
          BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
               color: Colors.green[100]   ),
           height: 500,
           width: double.infinity,
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: <Widget>[
               Padding(
                 padding: const EdgeInsets.all(18.0),
                 child: Text(fruit.name,style: TextStyle(fontSize: 30,
                        fontWeight: FontWeight.bold, color: Colors.black87)),
               ),
               Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: Text(" 1 kilogramo ",style: TextStyle(fontSize: 22,
                          fontWeight: FontWeight.bold, color: Colors.green)),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text(fruit.productDescription,style : TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
               ),
               Row(
                 children: <Widget>[
                   Spacer(),
                   InkWell(
                      onTap:  () {
                                        cart.getSumProduct(fruit);
                                        Navigator.pop(context);
                                      },
                     child: Padding(
                       padding: const EdgeInsets.all(18.0),
                       child: Container(
                       color: Colors.green[800],
                       child: Padding(
                         padding: const EdgeInsets.all(28.0),
                         child: Text("Agregar al carrito",style: TextStyle(color:Colors.white)),
                       ),
                   ),
                     )),
                 ],
               )
             ]
            
           ),
         )
          ]
        )
          ]
        ),
     
    ],
          ),
      ),
      );
  }
}