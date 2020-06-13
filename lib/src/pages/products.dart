import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body:ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2()
        ],
      ),
    );
  }

  Widget _cardTipo2(){

    final card = Container(
     // clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://miro.medium.com/max/4320/0*QNdQhs_T3ffa6B0m.jpeg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,

          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No sé que poner'),
          )
          
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
       boxShadow: <BoxShadow>[
         BoxShadow(
           color: Colors.black26,
           blurRadius: 10.0,
           spreadRadius: 2.0,
           offset: Offset(2.0,10.0)
         )
       ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );

  }

  Widget _cardTipo1() {

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.format_indent_decrease, color: Colors.green,),
            title: Text('Este es el titulo'),
            subtitle: Text('Este es el subtitulo'),

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: (){},
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: (){
                },
              )
            ],
          )
        ],
      ),
    );

  }
}