import 'package:flutter/material.dart';
import 'package:exampleflutter/constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgrounColor,
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Stack(
                children: <Widget>[
                  Container(
                    color: primaryColor,
                    height: 130,
                    width: double.infinity,
                    padding: EdgeInsets.only(top: 90, left: 30),
                    child: Text(
                      "Olá Yure",
                      style: titulo2,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 20, left: 20, top: 200),
                        height: 50,
                        alignment: Alignment.centerLeft,
                        child: FlatButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Icon(
                                Icons.account_circle,
                                color: primaryColor,
                              ),
                              VerticalDivider(
                                width: 30,
                                color: Colors.transparent,
                              ),
                              Text(
                                "PERFIL",
                                style: titulo2,
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => null));
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        title: Text(
          'FastShope',
          style: titulo1,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.apartment,
              color: iconColor,
            ),
            onPressed: null,
            //onPressed: () {},
          ),
        ],
      ),
    );
  }
}
