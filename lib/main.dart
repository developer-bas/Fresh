import 'package:flutter/material.dart';
import 'package:fresco_app/src/pages/fruit2_page.dart';
import 'package:fresco_app/src/pages/fruitdetail_page.dart';
import 'package:fresco_app/src/pages/main_page.dart';
import 'package:fresco_app/src/pages/productsView_page.dart';
import 'package:fresco_app/src/pages/profile_page.dart';
import 'package:fresco_app/src/pages/recipesSelect_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'mainPage',
     routes: {
       'productsView': (BuildContext context) => ProductsPage(),
       'detailProductView': (BuildContext context) => FruitDetailPage(),
       'mainPage': (BuildContext context) => MainPage(),
       'testFruit':(BuildContext context) => FruitToCart(),
       'profile':(BuildContext context) => ProfilePage(),
       'rece':(BuildContext context) => RecipesSelectedPage()
     },
    );
  }
}