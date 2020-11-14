import 'package:flutter/material.dart';

import 'constants.dart';

class PerfilPage extends StatefulWidget {
  @override
  _PerfilPageState createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgrounColor,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Perfil",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: iconColor,
              ),
              onPressed: null,
              //onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 400,
                  width: double.maxFinite,
                  padding: paddingPadrao,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Divider(
                        color: Colors.transparent,
                        height: 60,
                      ),
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      Divider(
                        color: Colors.transparent,
                        height: 40,
                      ),
                      Text(
                        "Nome do Consagrado",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: backgrounColor,
                  width: double.maxFinite,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Divider(
                          color: Colors.transparent,
                          height: 50,
                        ),
                        buildRow(),
                        Divider(
                          color: Colors.transparent,
                          height: 50,
                        ),
                        buildRow(),
                        Divider(
                          color: Colors.transparent,
                          height: 50,
                        ),
                        buildRow(),
                        Divider(
                          color: Colors.transparent,
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Row buildRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        VerticalDivider(
          width: 2,
          color: Colors.transparent,
        ),
        Container(
          width: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(bordas),
          ),
          // padding: EdgeInsets.only(left: 50, top: 40),
          child: Column(
            children: <Widget>[
              Icon(
                Icons.account_circle_outlined,
                color: primaryColor,
                size: 50,
              ),
              Divider(
                color: Colors.transparent,
                height: 5,
              ),
              Text(
                "Conta",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        // VerticalDivider(
        //   width: 50,
        //   color: Colors.transparent,
        // ),
        Container(
          width: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(bordas),
          ),
          // padding: EdgeInsets.only(left: 50, top: 40),
          child: Column(
            children: <Widget>[
              Icon(
                Icons.account_circle_outlined,
                color: primaryColor,
                size: 50,
              ),
              Divider(
                color: Colors.transparent,
                height: 5,
              ),
              Text(
                "Conta",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        // VerticalDivider(
        //   width: 50,
        //   color: Colors.transparent,
        // ),
        Container(
          width: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(bordas),
          ),
          // padding: EdgeInsets.only(left: 50, top: 40),
          child: Column(
            children: <Widget>[
              Icon(
                Icons.account_circle_outlined,
                color: primaryColor,
                size: 50,
              ),
              Divider(
                color: Colors.transparent,
                height: 5,
              ),
              Text(
                "Conta",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        VerticalDivider(
          width: 2,
          color: Colors.transparent,
        ),
      ],
    );
  }
}
