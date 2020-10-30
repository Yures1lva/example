import 'package:exampleflutter/empresalist.dart';
import 'package:flutter/material.dart';
import 'package:exampleflutter/Page2.dart';
import 'package:flutter/rendering.dart';
import 'package:exampleflutter/constants.dart';
import 'package:exampleflutter/search_box.dart';

class Listadeempresas extends StatefulWidget {
  @override
  _ListadeempresasState createState() => _ListadeempresasState();
}

class _ListadeempresasState extends State<Listadeempresas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        title: Text(
          'Empresas',
          style: titulo1,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.apartment),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 2,
            ),
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.4),
                borderRadius: BorderRadius.circular(5)),
            child: TextField(
              decoration: InputDecoration(icon: Icon(Icons.search)),
            ),
          )
        ],
      ),
      /*appBar: AppBar(
          elevation: 1,
          title: Text(
            "Empresas",
            style: titulo1,
          ),
          centerTitle: false,
          backgroundColor: backgrounColor),
      //padding: EdgeInsets.only(left: 8.0, top: 15.0, right: 10.0, bottom: 10.0),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0 / 4),

            decoration: BoxDecoration(color: Colors.white)
          )*/

      /* Card(
              elevation: 5,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Page2(),
                      ));
                },
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: <Widget>[
                    Divider(
                      height: 70,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10.0,
                              ),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: SizedBox(
                                    height: 30,
                                    //width: 40,
                                    child: Image.asset('images/nikeicon.png',
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40.0),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      empresalist[0].name,
                                      style: titulo1,
                                    ),
                                    Divider(
                                      height: 5,
                                    ),
                                    Text(
                                      empresalist[0].description,
                                      style: textonormal,
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Color(0xff0a8754),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Icon(Icons.star,
                                        size: 15, color: Color(0xff0a8754)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Icon(Icons.star,
                                        size: 15, color: Color(0xff0a8754)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Icon(Icons.star_half,
                                        size: 15, color: Color(0xff0a8754)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Icon(
                                        Icons.star_border_purple500_sharp,
                                        size: 15,
                                        color: Color(0xff0a8754)),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),*/
    );
  }
}
