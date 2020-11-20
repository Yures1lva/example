import 'package:flutter/material.dart';
import 'package:exampleflutter/constants.dart';
import 'package:exampleflutter/homePage.dart';

import 'PageEmpresas.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgrounColor,
      appBar: AppBar(
        leading: new Container(),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Entre no FastShope',
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: paddingPadrao,
                        height: 80,
                        color: primaryColor,
                      ),
                      Container(
                        padding: paddingPadrao,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Entre no FastShope e \nrealize suas compras \nlocais pelo app",
                              style: titulo1,
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              "imagem",
                              style: titulo1,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        height: 400,
                        color: Colors.transparent,
                      ),
                      Container(
                        padding: paddingPadrao,
                        child: butaoPadroa(
                          context,
                          "Entrar",
                          buttonColor,
                          iconColor,
                          Icon(
                            Icons.open_in_new,
                            color: iconColor,
                          ),
                          () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
