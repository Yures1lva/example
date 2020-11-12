import 'package:flutter/material.dart';
import 'package:exampleflutter/constants.dart';
import 'package:exampleflutter/homePage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
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
      body: Column(
        children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 75),
                  decoration: BoxDecoration(
                    color: backgrounColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(22),
                    ),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: 22, left: 20, right: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Entre no FastShope e \nrealize suas compras \nlocais pelo app",
                        style: textonormal2,
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        "imagem",
                        style: textButton,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 22, left: 20, right: 20),
                ),
                Divider(height: 20, color: Colors.transparent),
                Container(
                  margin: EdgeInsets.only(right: 20, left: 20, top: 600),
                  height: 50,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(bordas),
                    ),
                  ),
                  child: FlatButton(
                    height: 50,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(bordas),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.open_in_new,
                          color: iconColor,
                        ),
                        Text(
                          "ENTRAR",
                          style: textButton,
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
