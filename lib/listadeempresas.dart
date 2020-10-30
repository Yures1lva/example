import 'package:flutter/material.dart';
import 'package:exampleflutter/Page2.dart';
import 'package:flutter/rendering.dart';
import 'package:exampleflutter/constants.dart';

class Listadeempresas extends StatefulWidget {
  @override
  _ListadeempresasState createState() => _ListadeempresasState();
}

class _ListadeempresasState extends State<Listadeempresas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgrounColor,
      appBar: AppBar(
        elevation: 1,
        title: Text(
          "Empresas",
          style: titulo1,
        ),
        centerTitle: false,
        backgroundColor: primaryColor,
      ),
      body: SingleChildScrollView(
        padding:
            EdgeInsets.only(left: 8.0, top: 15.0, right: 10.0, bottom: 10.0),
        child: Column(
          children: <Widget>[
            Card(
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
                    Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Image.asset('images/nikeicon.png'),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Column(children: <Widget>[
                                Text(
                                  "Nike, tudo para seu esporte",
                                  textAlign: TextAlign.right,
                                  style: subtitulo,
                                ),
                                Text(
                                  "Os Melhores Lançamentos para o seu Esporte",
                                  textAlign: TextAlign.right,
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
        ),
      ),
    );
  }
}
