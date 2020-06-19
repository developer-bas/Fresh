import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fresco_app/provider/fruit_provider.dart';
import 'package:fresco_app/provider/shoppingcart_provider.dart';

class VegetablePage extends StatelessWidget {
  const VegetablePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    return SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height:30),
                Text("    Nuestra selcción para ti",style: TextStyle( fontSize: 20,
                        fontWeight: FontWeight.bold, color: Colors.black45)),
                SizedBox(width: 14.0),
             Container( height: 150,child: _DailyVegetable(context)),
             Container( height: 300, ),
             Container( height: 300,color: Colors.lightGreen, ),
             Container( height: 300, color: Colors.red[200],)
              ],
            ),
          ),
    );
  }
}

Widget _DailyVegetable (BuildContext context){

  final vegetableList = Provider.of<VegetableProvider>(context).vegetable;
  

  return (vegetableList.length == 0) ? Center( child: CircularProgressIndicator(backgroundColor: Colors.green,)) :
  
  ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount:  vegetableList.length,
              itemBuilder: (BuildContext context , int index ){
                return Hero(
                          tag: vegetableList[index].id,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                             width: 90,
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
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: GestureDetector(
                                  onTap: () => Navigator.pushNamed(context, 'detailProductView',arguments: vegetableList[index]),
                                  child: FadeInImage(placeholder: AssetImage('assets/fruit-loading.gif'), 
                                  image: NetworkImage(vegetableList[index].getImage()),
                                  fit: BoxFit.cover
                                  ),
                                ),
                        ),
                            ),
                          )
                        );
              }
        
        );
}