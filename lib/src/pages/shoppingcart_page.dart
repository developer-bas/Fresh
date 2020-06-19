import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fresco_app/provider/shoppingcart_provider.dart';

class ShoppingCartPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      
                body: SafeArea(
                                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height:40),
                      Container(child: InkWell(child:Text("Salida temporal"),onTap: (){Navigator.pop(context);})),
                      SizedBox(height: 24.0),
                      Text("  Tus productos seleccionados fueron",style: TextStyle( fontSize: 20,
                              fontWeight: FontWeight.bold, color: Colors.black)),
                      SizedBox(height: 24.0),
                   Container( height: 350,child: _productsCart(context),color: Colors.indigo,),
                   Spacer(),
                  _subTotal(),
                   Container( height: 100, color: Colors.green[600],)
                    ],
                  ),
                ),
    );
  }
}

Widget _productsCart (BuildContext context){

  final prod = Provider.of<ShoppingCartProvider>(context).products;
  

  return (prod.length == 0) ? Center( child: CircularProgressIndicator(backgroundColor: Colors.green,)) :
  
  ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount:  prod.length,
              itemBuilder: (BuildContext context , int index ){
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                   height: 100,
                   decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: <BoxShadow>[
                       BoxShadow(
                          color: Colors.black26,
                          blurRadius: 3.0,
                          spreadRadius: 0.0,
                          offset: Offset(-1.0, 2.0))
                    ]),
                    child:
                      Row(
                        children:<Widget>[
                          SizedBox(width:10),
                          Container(
                            height: 88,
                            width: 80,
                            child: Image(image:NetworkImage(prod[index].getImage()),fit: BoxFit.cover,)
                          ),
                          Spacer(),
                          Container(

                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Column(
                                children: <Widget>[
                                  Text(prod[index].name, style: TextStyle( fontSize: 20,
                              fontWeight: FontWeight.bold, color: Colors.black),),
                                  Text((prod[index].price).toString()),
                                  Container(
                                    child:Row(
                                      children:<Widget>[
                                        Container( child: Icon(Icons.remove,color: Color(0xff32a05f),)),
                                        Text("1 KG"),
                                        Container(
                                          color: Color(0xff32a05f),
                                          child: Icon(Icons.add)
                                        )
                                      ]
                                    )
                                  ) 
                                ],
                              ),
                            )
                          ),
                          Spacer(),
                          Container(child: Icon(Icons.delete_outline,color: Color(0xff32a05f),size: 32,)),
                          SizedBox(width:20)
                        ]
                      )
                  ),
                );
              }
        
        );
}

Widget _subTotal(){

  return  Container(
    height:150, 
    color: Colors.green[100], 
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Row(
          children: <Widget>[
            Text("Forma de Pago",style: TextStyle( fontSize: 20,
                                fontWeight: FontWeight.bold, color: Colors.black)),
            Spacer(),
            Text("Master Card 2591")

          ]
          ),
          Row(
            children: <Widget>[
               Text("Lugar de entrega",style: TextStyle( fontSize: 20,
                                fontWeight: FontWeight.bold, color: Colors.black)),
            Spacer(),
            Text("Avenida siempre viva ..")
            ]
          ),
          Row(
            children: <Widget>[
               Text("Costo de envio",style: TextStyle( fontSize: 20,
                                fontWeight: FontWeight.bold, color: Colors.black)),
            Spacer(),
            Text('\$40.00')
            ]
          ),
          Divider(color: Colors.black,),
          Row(
             children: <Widget>[
               Text("Costo de envio",style: TextStyle( fontSize: 20,
                                fontWeight: FontWeight.bold, color: Colors.black)),
            Spacer(),
            Text('\$40.00',style: TextStyle( fontSize: 20,
                                fontWeight: FontWeight.bold, color: Colors.black))
            ]
          )
        ]
      ),
    ),

  );


}