import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Empresas'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Empresas"),
      ),
      body: SingleChildScrollView(
        padding:
            EdgeInsets.only(left: 8.0, top: 15.0, right: 10.0, bottom: 10.0),
        child: Column(
          children: <Widget>[
            InkWell(
              child: Card(
                //color: Colors.lightBlueAccent,
                elevation: 5,
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          //Navigator.push(
                          //  context, MaterialPageRoute(builder: (context) => Page2()));
                        },
                        child: Column(
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
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff102027),
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text(
                                      "Os Melhores Lançamentos para o seu Esporte",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff102027),
                                        fontSize: 10,
                                      ),
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
                                          color: Colors.blueAccent,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(2.0),
                                        child: Icon(Icons.star,
                                            size: 15, color: Colors.blueAccent),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(2.0),
                                        child: Icon(Icons.star,
                                            size: 15, color: Colors.blueAccent),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(2.0),
                                        child: Icon(Icons.star_half,
                                            size: 15, color: Colors.blueAccent),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(2.0),
                                        child: Icon(
                                            Icons.star_border_purple500_sharp,
                                            size: 15,
                                            color: Colors.blueAccent),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Column()
                    ],
                  ),
                ),
              ),
            ),
            Card(),
            Card(
              //color: Colors.lightBlueAccent,
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(8),
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
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff102027),
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  "Os Melhores Lançamentos para o seu Esporte",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff102027),
                                    fontSize: 10,
                                  ),
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
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Icon(Icons.star,
                                        size: 15, color: Colors.blueAccent),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Icon(Icons.star,
                                        size: 15, color: Colors.blueAccent),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Icon(Icons.star_half,
                                        size: 15, color: Colors.blueAccent),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Icon(
                                        Icons.star_border_purple500_sharp,
                                        size: 15,
                                        color: Colors.blueAccent),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Card(
              //color: Colors.lightBlueAccent,
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(8),
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
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff102027),
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  "Os Melhores Lançamentos para o seu Esporte",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff102027),
                                    fontSize: 10,
                                  ),
                                ),
                              ]),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Card(
              //color: Colors.lightBlueAccent,
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(8),
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
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff102027),
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  "Os Melhores Lançamentos para o seu Esporte",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff102027),
                                    fontSize: 10,
                                  ),
                                ),
                              ]),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Card(
              //color: Colors.lightBlueAccent,
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(8),
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
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff102027),
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  "Os Melhores Lançamentos para o seu Esporte",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff102027),
                                    fontSize: 10,
                                  ),
                                ),
                              ]),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Card(
              //color: Colors.lightBlueAccent,
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(8),
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
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff102027),
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  "Os Melhores Lançamentos para o seu Esporte",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff102027),
                                    fontSize: 10,
                                  ),
                                ),
                              ]),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Card(
              //color: Colors.lightBlueAccent,
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(8),
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
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff102027),
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  "Os Melhores Lançamentos para o seu Esporte",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff102027),
                                    fontSize: 10,
                                  ),
                                ),
                              ]),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Card(
              //color: Colors.lightBlueAccent,
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(8),
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
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff102027),
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  "Os Melhores Lançamentos para o seu Esporte",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff102027),
                                    fontSize: 10,
                                  ),
                                ),
                              ]),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Card(
              //color: Colors.lightBlueAccent,
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(8),
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
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff102027),
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  "Os Melhores Lançamentos para o seu Esporte",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff102027),
                                    fontSize: 10,
                                  ),
                                ),
                              ]),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Card(
              //color: Colors.lightBlueAccent,
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(8),
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
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff102027),
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  "Os Melhores Lançamentos para o seu Esporte",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff102027),
                                    fontSize: 10,
                                  ),
                                ),
                              ]),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
