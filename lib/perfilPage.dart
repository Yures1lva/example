import 'package:exampleflutter/homePage.dart';
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
                Icons.edit,
                color: iconColor,
              ),
              onPressed: () {},
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
                  padding: EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.center,
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
                      Divider(
                        height: 40,
                        color: Colors.transparent,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [],
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
                        buildRow(
                          Icon(
                            Icons.account_circle_outlined,
                            color: primaryColor,
                            size: 50,
                          ),
                          "Mudar\nUsername",
                          Icon(
                            Icons.supervised_user_circle,
                            color: primaryColor,
                            size: 50,
                          ),
                          "Víncular\nContas",
                          Icon(
                            Icons.camera,
                            color: primaryColor,
                            size: 50,
                          ),
                          "Mudar\nFoto",
                        ),
                        Divider(
                          height: 50,
                          color: Colors.transparent,
                        ),
                        buildRow(
                          Icon(
                            Icons.help,
                            color: primaryColor,
                            size: 50,
                          ),
                          "Ajuda",
                          Icon(
                            Icons.local_atm,
                            color: primaryColor,
                            size: 50,
                          ),
                          "Mudar\nEndereço",
                          Icon(
                            Icons.point_of_sale_rounded,
                            color: primaryColor,
                            size: 50,
                          ),
                          "Sair ou\nMudar Conta",
                        ),
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

  Row buildRow(Icon icon1, String nome1, Icon icon2, String nome2, Icon icon3,
      String nome3) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        // VerticalDivider(
        //   width: 2,
        //   color: Colors.transparent,
        // ),
        Container(
          // width: 160,
          padding: EdgeInsets.symmetric(horizontal: 2),
          // margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: corfundo,
            borderRadius: BorderRadius.circular(100),
          ),
          // padding: EdgeInsets.only(left: 50, top: 40),
          child: Column(
            children: <Widget>[
              FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(110),
                ),
                onPressed: () {},
                child: Column(
                  children: <Widget>[
                    icon1,
                    Divider(
                      color: Colors.transparent,
                      height: 5,
                    ),
                    Text(
                      nome1,
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          onPressed: () {},
          child: Column(
            children: <Widget>[
              icon2,
              Divider(
                color: Colors.transparent,
                height: 5,
              ),
              Text(
                nome2,
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          onPressed: () {},
          child: Column(
            children: <Widget>[
              icon3,
              Divider(
                color: Colors.transparent,
                height: 5,
              ),
              Text(
                nome3,
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
