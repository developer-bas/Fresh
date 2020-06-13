import 'package:flutter/material.dart';

class FruitDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff32a05f),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(80)),
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(22.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 15.0),
                    IconButton(icon: Icon(Icons.arrow_back), onPressed: (){Navigator.pop(context);}),
                    SizedBox(height: 2.0),
                    Padding(
                      padding: EdgeInsets.only(left:30),
                                          child: Container(
                        width: 300,
                        child: Text(
                          "UVAS",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 32.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 9.0),
                    Text(
                      "La mejor selección ...",
                      style: TextStyle(color: Colors.black45),
                    ),
                    SizedBox(height: 12.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.only(bottom: 15.0),
                            child: Text(
                              '\$',
                              style: TextStyle(color: Color(0xff32a05f)),
                            )),
                        SizedBox(width: 4.0),
                        Text('53',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 50.0,
                                color: Color(0xff32a05f)))
                      ],
                    ),
                    Spacer(),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              FloatingActionButton(
                                onPressed: () {},
                                heroTag: 'b1',
                                backgroundColor: Color(0xff32a05f),
                                child: Icon(Icons.add),
                              ),
                              SizedBox(height:10.0),
                              FloatingActionButton(
                                onPressed: () {},
                                heroTag: 'b2',
                                backgroundColor: Colors.white,
                                child: Icon(Icons.remove,color: Color(0xff32a05f),),
                              ),
                            ],
                          ),
                          Container(
                              width: 160.0,
                              height: 205.0,
                              child: Image.network(
                                "https://www.lechepuleva.es/documents/13930/203222/uva_g.jpg/4ee0cd1b-f0d3-41cc-80b8-17e5a80b834a?t=1422618555000",
                                fit: BoxFit.fill,
                              ))
                        ]),
                    SizedBox(height: 10.0)
                  ],
                ),
              ),
            ),
          ),
          Expanded(flex: 1, child: Container())
        ],
      ),
    );
  }
}
