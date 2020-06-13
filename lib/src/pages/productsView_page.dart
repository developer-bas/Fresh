import 'package:flutter/material.dart';
import 'package:fresco_app/src/pages/fruit_page.dart';
import 'package:fresco_app/src/pages/fruitdetail_page.dart';
import 'package:fresco_app/src/pages/products.dart';
import 'package:provider/provider.dart';
class ProductsPage  extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => _NavegationModel(),
        child: Scaffold(
        body: _Paginas(),
        bottomNavigationBar: _Navigation(),
  
      ),
    );
  }
}

class _Navigation extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

    final navegation = Provider.of<_NavegationModel>(context);

    return BottomNavigationBar(
      currentIndex: navegation.paginaActualG,
      onTap: (i)=> navegation.paginaActualS = i,
      items:[
      BottomNavigationBarItem(icon: Icon(Icons.view_quilt),title: Text('')),
      BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), title: Text('')),
      BottomNavigationBarItem(icon: Icon(Icons.person),title: Text('')),
    ]);
  }
}

class _Paginas extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final navegation = Provider.of<_NavegationModel>(context);


    return PageView(
      controller: navegation.pageController,

      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[

        FruitPage(),
        Container(
          color: Colors.green
        ),
        Container(
          color: Colors.green
        )
      ]
    );
  }
}

class _NavegationModel extends ChangeNotifier{

  int _paginaActual = 0;
  PageController _pageController = new PageController();



  int get paginaActualG => this._paginaActual;

  set paginaActualS(int value){
    this._paginaActual = value;
    notifyListeners();
    _pageController.animateToPage(value, duration: Duration(milliseconds: 250), curve: Curves.easeOut);

  } 
  PageController get pageController => this._pageController; 
  
}