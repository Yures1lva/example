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
          // leadingWidth: 20,
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
              onPressed: null,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 330,
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
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                            image: AssetImage("images/perfil.jpg"),
                          ),
                        ),
                        //  child: Image(image: AssetImage("images/nikeicon.png"),),
                      ),
                      Divider(
                        color: Colors.transparent,
                        height: 40,
                      ),
                      Text(
                        "Nome de Usuário",
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
                          height: 10,
                        ),
                        buildRow(
                          Icon(
                            Icons.account_circle_outlined,
                            color: primaryColor,
                            size: 30,
                          ),
                          "Mudar Username",
                          () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                        ),
                        buildRow(
                          Icon(
                            Icons.photo_camera_outlined,
                            color: primaryColor,
                            size: 30,
                          ),
                          "Mudar Foto de Perfil",
                          () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                        ),
                        buildRow(
                          Icon(
                            Icons.email_outlined,
                            color: primaryColor,
                            size: 30,
                          ),
                          "Edidar  Email",
                          () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                        ),
                        buildRow(
                          Icon(
                            Icons.edit_location_outlined,
                            color: primaryColor,
                            size: 30,
                          ),
                          "Editar Meus Endereços",
                          () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                        ),
                        buildRow(
                          Icon(
                            Icons.shopping_bag_outlined,
                            color: primaryColor,
                            size: 30,
                          ),
                          "Minhas Compras",
                          () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                        ),
                        buildRow(
                          Icon(
                            Icons.account_tree_outlined,
                            color: primaryColor,
                            size: 30,
                          ),
                          "Vínculo de Conta",
                          () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                        ),
                        buildRow(
                          Icon(
                            Icons.close,
                            color: primaryColor,
                            size: 30,
                          ),
                          "Sair da Conta",
                          () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                        ),
                        Divider(
                          color: Colors.transparent,
                          height: 20,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Container buildRow(
    Icon icon1,
    String nome1,
    Function navigator,
  ) {
    return Container(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Column(children: <Widget>[
          butaoPadroa(
            context,
            nome1,
            backgrounColor2,
            primaryColor,
            icon1,
            navigator,
          ),
        ]));
  }
}
