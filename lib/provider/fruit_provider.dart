import 'package:flutter/material.dart';
import 'package:fresco_app/model/product_model.dart' as fruitModel;
import 'package:fresco_app/model/vegetable_model.dart' as vegetableModel;
import 'package:http/http.dart' as http;

class  FruitProvider extends ChangeNotifier{

  List<fruitModel.Fruit> fruit = [];

  FruitProvider(){
    this.getFruits();
  }


  //Función para obtener las frutas de nuestro Servidor
  getFruits() async {
    final url = 'https://still-crag-38124.herokuapp.com/api/fruits';
    final resp = await http.get(url);
    final fruitData = fruitModel.dataFromJson(resp.body);

    this.fruit.addAll(fruitData.fruit);
    notifyListeners();

  }

}

class VegetableProvider extends ChangeNotifier {

  List<vegetableModel.Vegetable> vegetable = [];

  VegetableProvider(){
this.getVegetables();
  }
  getVegetables() async {
    final url = 'https://still-crag-38124.herokuapp.com/api/vegetables';
    final resp = await http.get(url);
    final vegetableData = vegetableModel.dataFromJson(resp.body);

    this.vegetable.addAll(vegetableData.vegetable);
    notifyListeners();

  }

  
}


