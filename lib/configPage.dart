import 'package:flutter/material.dart';
import 'package:exampleflutter/constants.dart';

class ConfigPage extends StatefulWidget {
  @override
  _ConfigPageState createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgrounColor,
      appBar: buildAppBar(
        context,
        "Configurações",
        Icon(
          Icons.settings,
          color: iconColor,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            styleContainer(
              "Difinições do App", //nome do container
              3, //quantidade de opções -1
              "Notificações",
              "",
              "",
              "",
            ),
            // styleContainer("mia jeba"),
            // styleContainer("suporte"),
            Divider(
              height: 40,
              color: Colors.transparent,
            )
          ],
        ),
      ),
    );
  }

  Container styleContainer(
    String name,
    int qtd,
    String name1,
    String name2,
    String name3,
    String name4,
  ) {
    List<Widget> listapika = new List<Widget>();

    // for (int i = 0; i < 5; i++) {
    //   listapika.add(rowStyle(""));
    // }
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              left: 10,
              top: 20,
              bottom: 5,
            ),
            child: Text(
              name,
              style: TextStyle(
                color: primaryColor,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            //height: 400,
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
                // borderRadius: BorderRadius.only(
                //   bottomLeft: Radius.circular(bordas),
                //   bottomRight: Radius.circular(bordas),
                // ),
                borderRadius: BorderRadius.circular(bordas),
                color: Colors.white),
            child: Column(
              //ainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                //rowStyle("comi"),

                Container(
                  child: Column(children: rowStyle("nome1", qtd)),
                ),
                Container(
                  height: 40,
                  padding: EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "nome1",
                              style: TextStyle(
                                fontSize: 20,
                                color: primaryColor,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: primaryColor,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                      // Divider(
                      //   //height: 10,
                      //   thickness: 2,
                      //   color: backgrounColor,
                      // ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> rowStyle(
    String nome1,
    int qtd,
  ) {
    List<Widget> rowList = new List<Widget>();
    List<String> nomesLista = new List<String>();

    nomesLista = [];
    Container row1() {
      return Container(
        height: 50,
        padding: EdgeInsets.only(left: 10, right: 10, top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    nome1,
                    style: TextStyle(
                      fontSize: 20,
                      color: primaryColor,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: primaryColor,
                    size: 20,
                  ),
                ],
              ),
            ),
            Divider(
              //height: 10,
              thickness: 2,
              color: backgrounColor,
            ),
          ],
        ),
      );
    }

    for (int i = 0; i < qtd; i++) {
      rowList.add(row1());
    }
    return rowList;
  }
}
