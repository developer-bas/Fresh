import 'package:flutter/material.dart';
import 'package:fresco_app/model/product_model.dart' as fruitModel;
//import 'package:fresco_app/model/vegetable_model.dart' as vegetableModel;


class ShoppingCartProvider extends ChangeNotifier {

  List <dynamic> products = [];
  

  ShoppingCartProvider(){
    this.getIncio();
  }


  getIncio(){
    print("Iniciada");
  }

  getSumProduct(fruitModel.Fruit fruit){

    final cart = <fruitModel.Fruit>  [fruit] ;

    products.addAll(cart);
    notifyListeners();
    print(products);
  }



}