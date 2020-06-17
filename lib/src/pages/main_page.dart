import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:fresco_app/provider/fruit_provider.dart';
import 'package:fresco_app/src/pages/fruit_page.dart';
import 'package:fresco_app/src/pages/recipesSelect_page.dart';
import 'package:provider/provider.dart';
import 'package:transparent_image/transparent_image.dart';

class MainPage extends StatefulWidget {
  
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin {
  TabController tabcontroller;


  @override
  void initState() { 
    super.initState();
    tabcontroller = TabController(length: 5,vsync: this);
  }


  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> FruitProvider())
      ],
          child: Container(
        child: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
            child: Column( 
              
              children:<Widget>[
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
                               // color: Colors.blue
                                )),
                      ]),
                        SizedBox(height: 4),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
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
                      ),
                      SizedBox(height:4),
                      TabBar(
                       controller: tabcontroller,
                       indicatorPadding: EdgeInsets.all(4),
                       indicatorColor: Colors.white,
                       indicatorWeight: 6.0,
                       labelColor: Colors.white,
                       unselectedLabelColor: Colors.grey,
                       isScrollable: true,
                       tabs: <Widget>[
                       Tab(child:Text(" Inicio ",style: TextStyle(fontSize: 20))),
                       Tab(child:Text(" Frutas ",style: TextStyle(fontSize: 20))),
                       Tab(child: Text(" Verduras ",style: TextStyle(fontSize: 20))),
                       Tab(child:Text(" Granel ",style: TextStyle(fontSize: 20))),
                       Tab(child:Text("Recetas", style:TextStyle(fontSize:20)))
                       
                       
                     ]),
                     Expanded(
                      child: Container(
                         child:
                         TabBarView(
                           controller: tabcontroller,
                           children: <Widget>[
                             _FruitView(context),
                             FruitPage(),
                             Container(color: Colors.grey,),
                          

                            


                             Container(),
                             RecipesSelectedPage()
                           ]
                         )
                       ),
                     )
              ]
            )
          )
        ),
      ),
    );
                
  }//////////////////////////////
}


Widget _popularCell(BuildContext context,String url) {
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
        onTap: (){},
        child: Column(
          children: <Widget>[
            Container(
              height: 100.0,
              child: Padding(
                
                padding: const EdgeInsets.all(5.0),
                child: Image(image: NetworkImage(url),
                fit: BoxFit.fill
                ),
              ),
            )
          ],
        )

      ),
      width: 90.0,
    ),
  );
}


Widget _PersonalSelection(BuildContext context){
  return Container(
    color: Colors.white,
child: Column(
  
  crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget>[
    SizedBox(height:30),
    Text("    Nuestra selcción para ti",style: TextStyle( fontSize: 20,
                        fontWeight: FontWeight.bold, color: Colors.black45)),
     Container(
           
                //color: Colors.blue,
                margin: EdgeInsets.symmetric(vertical: 8.0),
                height: 130.0,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SizedBox(width: 4.0),
                      _popularCell(context,
          "https://www.lechepuleva.es/documents/13930/203222/uva_g.jpg/4ee0cd1b-f0d3-41cc-80b8-17e5a80b834a?t=1422618555000"),
                      _popularCell(context,"https://media.jardinitis.com/product/pera-800x800.jpeg"),
                      _popularCell(context,"https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=6&m=683494078&s=612x612&w=0&h=aVyDhOiTwUZI0NeF_ysdLZkSvDD4JxaJMdWSx2p3pp4="),
                      _popularCell(context,"https://res.cloudinary.com/walmart-labs/image/upload/w_960,dpr_auto,f_auto,q_auto:good/gr/images/product-images/img_large/00000000003421L.jpg"),
                      _popularCell(context, "https://images-na.ssl-images-amazon.com/images/I/71%2BqAJehpkL._SL1500_.jpg"),
                      _popularCell(context,
          "https://www.lechepuleva.es/documents/13930/203222/uva_g.jpg/4ee0cd1b-f0d3-41cc-80b8-17e5a80b834a?t=1422618555000"),
                      _popularCell(context,"https://media.jardinitis.com/product/pera-800x800.jpeg"),
                      _popularCell(context,"https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=6&m=683494078&s=612x612&w=0&h=aVyDhOiTwUZI0NeF_ysdLZkSvDD4JxaJMdWSx2p3pp4="),
                      _popularCell(context,"https://res.cloudinary.com/walmart-labs/image/upload/w_960,dpr_auto,f_auto,q_auto:good/gr/images/product-images/img_large/00000000003421L.jpg"),
                      _popularCell(context, "https://images-na.ssl-images-amazon.com/images/I/71%2BqAJehpkL._SL1500_.jpg"),
                    ]),
              ),
  ]
),
  );
}

Widget _offeredProduct(BuildContext context){

return Container(
    color: Colors.white,
child: Column(
  
  crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget>[
    SizedBox(height:30),
    Text("    Ofertas del día",style: TextStyle( fontSize: 20,
                        fontWeight: FontWeight.bold, color: Colors.black45)),
     Container(
           
                //color: Colors.blue,
                margin: EdgeInsets.symmetric(vertical: 8.0),
                height: 130.0,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SizedBox(width: 4.0),
                      _popularCell(context,
          "https://www.bidfoodiberia.com/media/catalog/product/cache/1/image/600x/17f82f742ffe127f42dca9de82fb58b1/p/l/ple2.jpg"),
                      _popularCell(context,"https://www.eluniversal.com.mx/sites/default/files/styles/f03-651x400/public/2017/10/04/avena.jpg?itok=uO_2qqVv&c=eabcd3a3d6a07b1aace2af55397dbb0d"),
                      _popularCell(context,"https://www.superama.com.mx/Content/images/products/img_large/0000000004799L.jpg"),
                      _popularCell(context,"https://5.imimg.com/data5/NP/BH/MY-13535572/nagpur-orange-500x500.jpg"),
                      _popularCell(context, "https://images-na.ssl-images-amazon.com/images/I/71%2BqAJehpkL._SL1500_.jpg"),
                      _popularCell(context,"https://www.lechepuleva.es/documents/13930/203222/uva_g.jpg/4ee0cd1b-f0d3-41cc-80b8-17e5a80b834a?t=1422618555000"),
                      _popularCell(context,"https://media.jardinitis.com/product/pera-800x800.jpeg"),
                      _popularCell(context,"https://media.istockphoto.com/photos/red-apple-with-leaf-picture-id683494078?k=6&m=683494078&s=612x612&w=0&h=aVyDhOiTwUZI0NeF_ysdLZkSvDD4JxaJMdWSx2p3pp4="),
                      _popularCell(context,"https://res.cloudinary.com/walmart-labs/image/upload/w_960,dpr_auto,f_auto,q_auto:good/gr/images/product-images/img_large/00000000003421L.jpg"),
                      _popularCell(context, "https://images-na.ssl-images-amazon.com/images/I/71%2BqAJehpkL._SL1500_.jpg"),
                    ]),
              ),
  ]
),
  );


}





Widget _FruitView(BuildContext context){

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
 
  return SingleChildScrollView(
      child: Column(
      children: <Widget>[
        
        _PersonalSelection(context),
        _offeredProduct(context),
        Container(height: 100,color: Colors.white,child: Center(child:Text("Lo más vendido",style: TextStyle(fontSize: 30,
                        fontWeight: FontWeight.bold, color: Colors.black87))),),
        Container(
          height: 400,
          color: Colors.white,
          child:  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: StaggeredGridView.countBuilder(
                                  scrollDirection: Axis.horizontal,
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
        ),
         Container(height: 200,color: Colors.black,),
      ],
    ),
  );
}





