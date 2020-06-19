import 'package:flutter/material.dart';
import 'package:fresco_app/src/pages/fruitdetail_page.dart';
import 'package:fresco_app/src/pages/vegetabledetail_page.dart';
import 'package:fresco_app/src/pages/main_page.dart';
import 'package:fresco_app/src/pages/profile_page.dart';
import 'package:fresco_app/src/pages/recipesSelect_page.dart';
import 'package:fresco_app/src/pages/shoppingcart_page.dart';
import 'package:provider/provider.dart';
import 'package:fresco_app/provider/fruit_provider.dart';
import 'package:fresco_app/provider/shoppingcart_provider.dart';
void main() => runApp(MyApp());
 
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> FruitProvider()),
        ChangeNotifierProvider(create: (_)=> VegetableProvider()),
        ChangeNotifierProvider(create: (_)=> ShoppingCartProvider())
      ],child: MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        initialRoute: 'mainPage',
       routes: {
         'detailProductView': (BuildContext context) => FruitDetailPage(),
         'mainPage': (BuildContext context) => MainPage(),
         'fruitToCart':(BuildContext context) => FruitToCart(),
         'profile':(BuildContext context) => ProfilePage(),
         'rece':(BuildContext context) => RecipesSelectedPage(),
         'shoppingCart':(BuildContext context) => ShoppingCartPage()
       },
      ),
    );
  }
}