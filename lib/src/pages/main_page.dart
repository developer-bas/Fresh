import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:transparent_image/transparent_image.dart';

class MainPage extends StatelessWidget {
  

  List<String> image = [
    "https://images.pexels.com/photos/244394/pexels-photo-244394.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    "https://images.pexels.com/photos/1437587/pexels-photo-1437587.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    "https://images.pexels.com/photos/4033111/pexels-photo-4033111.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    "https://images.pexels.com/photos/244393/pexels-photo-244393.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
    "https://images.pexels.com/photos/4033107/pexels-photo-4033107.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    "https://images.pexels.com/photos/2228553/pexels-photo-2228553.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
    "https://images.pexels.com/photos/244394/pexels-photo-244394.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    "https://images.pexels.com/photos/2872755/pexels-photo-2872755.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    "https://images.pexels.com/photos/947879/pexels-photo-947879.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    "https://images.pexels.com/photos/1437587/pexels-photo-1437587.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    "https://images.pexels.com/photos/4033111/pexels-photo-4033111.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    "https://images.pexels.com/photos/244393/pexels-photo-244393.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
    "https://images.pexels.com/photos/4033107/pexels-photo-4033107.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(children: <Widget>[
          Container(
            height: 280,
            color: Colors.orange,
          ),
          SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(children: <Widget>[
                Container(
                    child: IconButton(
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                        onPressed: ()=>Navigator.pushNamed(context, 'profile')),
                    decoration: BoxDecoration(
                        //color: Colors.blue
                        )),
                Spacer(),
                Container(
                    child: IconButton(
                        icon: Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        ),
                        onPressed: () {}),
                    decoration: BoxDecoration(
                        //color: Colors.blue
                        )),
              ]),
              SizedBox(height: 4),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(19.5)),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Buscar",
                      icon: Icon(Icons.search),
                      border: InputBorder.none),
                ),
              ),
              SizedBox(height: 15),
              Row(children: <Widget>[
                SizedBox(width: 30),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    border:Border.all(
                      color: Colors.white
                    )
                  ),
                  height: 40,
                  width: 100,
                  //color: Colors.white,
                  child: Center(child: Text("FRUTAS",style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white))),
                ),
                Spacer(),
                InkWell(
                    onTap: (){},
                    child: Container(
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      border:Border.all(
                        color: Colors.white
                      )
                    ),
                    height: 40,
                    width: 100,
                    //color: Colors.white,
                    child: Center(child: Text("VERDURAS",style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white))),
                  ),
                ),
                SizedBox(width: 30)
              ]),
              SizedBox(height: 10),
              Text('LO MAS VENDIDO',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white)),
              Container(
                //color: Colors.blue,
                margin: EdgeInsets.symmetric(vertical: 8.0),
                height: 130.0,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SizedBox(width: 4.0),
                      _popularCell(context),
                      _popularCell(context),
                      _popularCell(context),
                      _popularCell(context),
                      _popularCell(context),
                      _popularCell(context),
                      _popularCell(context),
                      _popularCell(context),
                      _popularCell(context),
                      _popularCell(context),
                      _popularCell(context),
                      _popularCell(context),
                    ]),
              ),
             

            ]),
          ))
        ]),
        Expanded(
                  child: Container(
                
                   child: StaggeredGridView.countBuilder(
                     crossAxisCount: 2, 
                     crossAxisSpacing: 4,
                     mainAxisSpacing: 4,
                     itemCount: image.length,
                     itemBuilder: (context,index){
                     return InkWell(
                       onTap: ()=> Navigator.pushNamed(context, 'testFruit',arguments: image[index]),
                                            child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white60,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Hero(
                          tag: index.toString(),
                                                  child: ClipRRect(
                            borderRadius:BorderRadius.all(Radius.circular(20)),
                            child: FadeInImage.memoryNetwork(placeholder: kTransparentImage, image: image[index],fit: BoxFit.cover,),

                          ),
                        ),
                       ),
                     );
                   }, staggeredTileBuilder: (index){
                     return StaggeredTile.count(1, index.isEven ? 1.2 : 1.8);
                   }),
                    ),
        ),
                  
        ],
      ),
    );
  }
}

Widget _popularCell(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 3, right: 10, bottom: 5, top: 5),
    child: Container(
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
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, 'detailProductView'),
        child: ListTile(
            subtitle: Text("\$28",style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black)),
            title: Image.network(
          "https://www.lechepuleva.es/documents/13930/203222/uva_g.jpg/4ee0cd1b-f0d3-41cc-80b8-17e5a80b834a?t=1422618555000",
          fit: BoxFit.contain,
        )),
      ),
      width: 90.0,
    ),
  );
}

Widget _fruitCell(BuildContext context) {
  return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
                      child: Row(children: <Widget>[
              Container(
                height: 75,
                width: 75,
                  child: Image.network(
                "https://images.pexels.com/photos/947879/pexels-photo-947879.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                fit: BoxFit.cover,
              )),
              SizedBox(width: 40.0),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                SizedBox(height:20),
                Text("FRUTA ...................",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black)),
                Text('\$34.00',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black45))
              ])
            ]),
          ),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 2.0,
                  spreadRadius: 0.0,
                  offset: Offset(-1.0, 2.0))
            ]),
        height: 100,
      ));
}


// ListView(
//                       //physics: NeverScrollableScrollPhysics(),
//                       primary: false,
//                       shrinkWrap: true,
//                       children: <Widget>[
//                         _fruitCell(context),
//                         _fruitCell(context),
//                         _fruitCell(context),
//                         _fruitCell(context),
//                         _fruitCell(context),
//                         _fruitCell(context),
//                         _fruitCell(context),
//                         _fruitCell(context)
//                       ],
//                     )