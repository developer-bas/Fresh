import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.pink,
     body: SingleChildScrollView(
            child: Column(
         children:<Widget>[
           _Top( context),
           SizedBox(height:15),
           Padding(
             padding: const EdgeInsets.all(12.0),
             child: _Main(),
           ),
           SizedBox(height:20),
           _Account(), 
           SizedBox(height:50),
           _Bottom()
           

         ]
       ),
     ),
   );
}
}
Widget _Top(BuildContext context) {
 return Container(
   height: 340.0, 
   color: Colors.pink,
   child: Padding(
     padding: const EdgeInsets.all(20.0),
     child: Column(
       children:<Widget>[
         SizedBox(height:20),
         Row(children:<Widget>[ Spacer(), IconButton(icon: Icon(Icons.close,color: Colors.white,size: 35,), onPressed: (){Navigator.pop(context);})]),
         
         Center(child: CircleAvatar(
           radius: 70,
           backgroundImage: NetworkImage("https://www.creativefabrica.com/wp-content/uploads/2020/04/08/Happy-Apple-Clip-Art-Graphics-3828254-1.png"),
         )),
         SizedBox(height:30),
         Text("ERIC SEBASTIAN CRUZ GUZMAN",style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white, fontSize: 24.0))

       ]
     ),
   ),
 );
}

Widget _Main(){
return Container(
  height: 124.0,
  decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 4.0,
                spreadRadius: 2.0,
                offset: Offset(-5.0, 2.0))
          ]), 
  child: Column(
    children: <Widget>[
      SizedBox(height:10),
      Row(
        children:<Widget>[
          Spacer(),
          Container(
            child: Padding(
              padding: EdgeInsets.all(0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget> [
                  Icon(Icons.settings),
                  SizedBox(height:10),
                  Text("Datos personales")
                ]
              ),
            ),
              height: 104,
            width: 80,
          ),
            Spacer(),
          Container(
              child: Padding(
              padding: EdgeInsets.all(0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget> [
                  Icon(Icons.history),
                  SizedBox(height:10),
                  Text("Historial pedidos")
                ]
              ),
            ),
              height: 104,
            width: 80,
          ),
          Spacer(),
          Container(
            child: Padding(
              padding: EdgeInsets.all(0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget> [
                  Icon(Icons.card_membership),
                  SizedBox(height:10),
                  Text("Forma de pago")
                ]
              ),
            ),
              height: 104,
            width: 80,
          ),
          Spacer(),
        ]
      )
    ]
  ),
  );
}

Widget _Account(){
return Container(height: 330.0, color: Colors.white,
  child: Column(
    children:<Widget>[
      SizedBox(height: 10,),
      Text("Mi cuenta",style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black, fontSize: 24.0)),
      Container(
        height: 290,
        child: ListView(
  children: _listaItems(),
),
      )
    ]
  ),

);
}

List<Widget> _listaItems(){
  final List<Widget> opciones = [];

  final item1 = ListTile(
    title: Text("Configuración"),
    trailing: Icon(Icons.keyboard_arrow_right),
  );
   
   opciones.add(item1);

  final item2 = ListTile(
    title: Text("Ubicaciones"),
    trailing: Icon(Icons.keyboard_arrow_right),
  );

  opciones.add(item2);

  final item3 = ListTile(
    title: Text("Soporte"),
    trailing: Icon(Icons.keyboard_arrow_right),
  );

  opciones.add(item3);

  final item4 = ListTile(
    title: Text("Cupones"),
    trailing: Icon(Icons.keyboard_arrow_right),
  );

  opciones.add(item4);

  final item5 = ListTile(
    title: Text("Terminos y condiciones"),
    trailing: Icon(Icons.keyboard_arrow_right),
  );

  opciones.add(item5);



  return opciones;
}

Widget _Bottom(){
  return Container(
    
    child: Padding(padding: EdgeInsets.all(1),
     child: Text("Versión : 0.0.4",style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white, fontSize: 14.0)),
    ),
  );
}