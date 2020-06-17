import 'package:flutter/material.dart';

class RecipesSelectedPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        children: <Widget>[
          _RecipeCategory("https://images.pexels.com/photos/1565982/pexels-photo-1565982.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
          _RecipeCategory("https://images.pexels.com/photos/1640774/pexels-photo-1640774.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
          _RecipeCategory("https://images.pexels.com/photos/1279330/pexels-photo-1279330.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
          _RecipeCategory("https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),

        ],
      ),
    );
  }
}


Widget _RecipeCategory( String url ){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Image(image: NetworkImage(url)),
    );
}