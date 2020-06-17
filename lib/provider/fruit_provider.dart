import 'package:flutter/material.dart';
import 'package:fresco_app/model/product_model.dart';
import 'package:http/http.dart' as http;

class  FruitProvider extends ChangeNotifier{

  List<Fruit> fruit = [];

  FruitProvider(){
    this.getFruits();
  }


  //Función para obtener las frutas de nuestro Servidor
  getFruits() async {
    final url = 'https://still-crag-38124.herokuapp.com/api/fruits';
    final resp = await http.get(url);
    final fruitData = dataFromJson(resp.body);

    this.fruit.addAll(fruitData.fruit);
    notifyListeners();

  }

}


