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
        appBar: buildAppBar(
          context,
          "Perfil",
          Icon(
            Icons.person,
            color: iconColor,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 280,
                  width: double.maxFinite,
                  padding: EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  decoration: BoxDecoration(
                    color: backgrounColor2,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                            image: AssetImage("images/perfil.jpg"),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: backgrounColor2,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: InkWell(
                                onTap: () {},
                                child: Icon(
                                  Icons.edit_outlined,
                                  size: 15,
                                  color: primaryColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.transparent,
                        height: 40,
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        padding: EdgeInsets.only(
                          left: 20,
                          right: 20,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Nome de Usuário",
                              style: TextStyle(
                                color: primaryColor,
                                fontSize: 25,
                              ),
                            ),
                            VerticalDivider(
                              color: Colors.transparent,
                              width: 5,
                            ),
                            VerticalDivider(
                              color: Colors.transparent,
                              width: 5,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.edit_outlined,
                                size: 15,
                                color: primaryColor,
                              ),
                            ),
                          ],
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
                            Icons
                                .credit_card_outlined, //card_membership_outlined,
                            color: primaryColor,
                            size: 30,
                          ),
                          "Formas de Pagamento",
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

//nestedScrollView
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
