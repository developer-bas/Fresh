import 'package:flutter/material.dart';

class FruitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange[600],
        body: SingleChildScrollView(
          // physics: ScrollPhysics(),
          child: Column(children: <Widget>[
          
            SizedBox(height: 90.0),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(75.0))),
              child: Padding(
                padding: EdgeInsets.all(13.0),
                child: Column(
                  children: <Widget>[
                    Text("HILO"),
                    Container(
                      color: Colors.blue,
                      margin: EdgeInsets.symmetric(vertical: 20.0),
                      height: 130.0,
                      child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            SizedBox(width: 4.0),
                            _popularCell(context),
                            _popularCell(context),
                            _popularCell(context),
                            _popularCell(context),
                            
                            
                            
                            
                            Container(width: 100.0, color: Colors.green),
                            Container(width: 100.0, color: Colors.red),
                            Container(width: 100.0, color: Colors.orange),
                            Container(width: 100.0, color: Colors.black),
                          ]),
                    ),
                    // SizedBox(height:20.0),
                    // Container(
                    //   child: ListView(
                    //     scrollDirection: Axis.vertical,
                    //     children: <Widget>[
                    //     ]
                    //   ),
                    // ),
                    Container(
                        color: Colors.black45,
                        height: 450.0,
                        child: ListView(
                          //physics: NeverScrollableScrollPhysics(),
                          primary: false,
                          shrinkWrap: true,
                          children: <Widget>[
                            _fruitCell(context),
                            _fruitCell(context),
                            _fruitCell(context),
                            _fruitCell(context),
                            _fruitCell(context),
                            _fruitCell(context),
                            _fruitCell(context),
                            _fruitCell(context)
                          ],
                        ))
                  ],
                ),
              ),
            ),
          ]),
        ));
  }
}

Widget _popularCell(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left:3,right:10,bottom: 5, top: 5),
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
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.green,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                  offset: Offset(2.0, 10.0))
            ]),
        height: 90,
      ));
}

// Container(
//             margin:EdgeInsets.symmetric(vertical:20.0)
//           )

//  body: Column(
//         children: <Widget>[
//           SizedBox(height: 90.0),
//           Container(
//             height: MediaQuery.of(context).size.height - 146,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0))
//             ),

//           ),

//         ]
//       ),
