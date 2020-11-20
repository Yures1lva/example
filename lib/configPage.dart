import 'package:exampleflutter/perfilPage.dart';
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
            container1(
              "Difinições do App", //nome do container
            ),
            //container2("Privacidade"),
            container3("Suporte"),
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

  Container container1(
    String name,
  ) {
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
                rowStyle(
                  "Perfil",
                  () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PerfilPage()));
                  },
                ),
                Divider(
                  //height: 10,
                  thickness: 2,
                  color: backgrounColor,
                ),
                rowStyle(
                  "Notificações",
                  () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        side: BorderSide(color: primaryColor),
                      ),
                      context: context,
                      builder: (context) => SingleChildScrollView(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.7,
                          width: double.maxFinite,
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(top: 5, left: 20),
                                height: 40,
                                width: double.maxFinite,
                                child: Text(
                                  "Notificações",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: primaryColor,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                    //   Navigator.push(context,
                    //       MaterialPageRoute(builder: (context) => PerfilPage()));
                  },
                ),
                Divider(
                  //height: 10,
                  thickness: 2,
                  color: backgrounColor,
                ),
                rowStyle(
                  "Tema", null,
                  // () {
                  //   Navigator.push(context,
                  //       MaterialPageRoute(builder: (context) => HomePage()));
                  // },),
                ),
                Divider(
                  //height: 10,
                  thickness: 2,
                  color: backgrounColor,
                ),
                rowStyle(
                  "Proteção do app", null,
                  // () {
                  //   Navigator.push(context,
                  //       MaterialPageRoute(builder: (context) => HomePage()));
                  // },
                ),
                Divider(
                  //height: 10,
                  thickness: 2,
                  color: backgrounColor,
                ),
                rowStyle(
                  "Idioma", null,
                  // () {
                  //   Navigator.push(context,
                  //       MaterialPageRoute(builder: (context) => HomePage()));
                  // },
                ),
                Divider(
                  //height: 10,
                  thickness: 2,
                  color: backgrounColor,
                ),
                rowStyle(
                  "Políica do app", null,
                  // () {
                  //   Navigator.push(context,
                  //       MaterialPageRoute(builder: (context) => HomePage()));
                  // },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Container container2(
  //   String name,
  // ) {
  //   List<Widget> listapika = new List<Widget>();

  //   // for (int i = 0; i < 5; i++) {
  //   //   listapika.add(rowStyle(""));
  //   // }
  //   return Container(
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: <Widget>[
  //         Padding(
  //           padding: EdgeInsets.only(
  //             left: 10,
  //             top: 20,
  //             bottom: 5,
  //           ),
  //           child: Text(
  //             name,
  //             style: TextStyle(
  //               color: primaryColor,
  //               fontSize: 15,
  //               fontWeight: FontWeight.w600,
  //             ),
  //           ),
  //         ),
  //         Container(
  //           //height: 400,
  //           width: double.maxFinite,
  //           margin: EdgeInsets.only(left: 10, right: 10),
  //           decoration: BoxDecoration(
  //               // borderRadius: BorderRadius.only(
  //               //   bottomLeft: Radius.circular(bordas),
  //               //   bottomRight: Radius.circular(bordas),
  //               // ),
  //               borderRadius: BorderRadius.circular(bordas),
  //               color: Colors.white),
  //           child: Column(
  //             //ainAxisAlignment: MainAxisAlignment.start,
  //             children: <Widget>[
  //               rowStyle("Notificações"),
  //               Divider(
  //                 //height: 10,
  //                 thickness: 2,
  //                 color: backgrounColor,
  //               ),
  //               rowStyle("Notificações"),
  //               Divider(
  //                 //height: 10,
  //                 thickness: 2,
  //                 color: backgrounColor,
  //               ),
  //               rowStyle("Notificações"),
  //               Divider(
  //                 //height: 10,
  //                 thickness: 2,
  //                 color: backgrounColor,
  //               ),
  //               rowStyle("Notificações"),
  //               Divider(
  //                 //height: 10,
  //                 thickness: 2,
  //                 color: backgrounColor,
  //               ),
  //               rowStyle("Notificações"),
  //               Divider(
  //                 //height: 10,
  //                 thickness: 2,
  //                 color: backgrounColor,
  //               ),
  //               rowStyle("Notificações"),
  //             ],
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  Container container3(
    String name,
  ) {
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
                rowStyle(
                  "Central de ajuda", null,
                  // () {
                  //   Navigator.push(context,
                  //       MaterialPageRoute(builder: (context) => HomePage()));
                  // },
                ),
                Divider(
                  //height: 10,
                  thickness: 2,
                  color: backgrounColor,
                ),
                rowStyle(
                  "Entre em contato", null,
                  // () {
                  //   Navigator.push(context,
                  //       MaterialPageRoute(builder: (context) => HomePage()));
                  // },
                ),
                Divider(
                  //height: 10,
                  thickness: 2,
                  color: backgrounColor,
                ),
                rowStyle(
                  "Sobre", null,
                  // () {
                  //   Navigator.push(context,
                  //       MaterialPageRoute(builder: (context) => HomePage()));
                  // },
                ),
                Divider(
                  //height: 10,
                  thickness: 2,
                  color: backgrounColor,
                ),
                rowStyle(
                  "Conhecer SNST", null,
                  // () {
                  //   Navigator.push(context,
                  //       MaterialPageRoute(builder: (context) => HomePage()));
                  // },
                ),
                Divider(
                  //height: 10,
                  thickness: 2,
                  color: backgrounColor,
                ),
                rowStyle(
                  "Excluir conta", null,
                  // () {
                  //   Navigator.push(context,
                  //       MaterialPageRoute(builder: (context) => HomePage()));
                  // },
                ),
                // Divider(
                //   //height: 10,
                //   thickness: 2,
                //   color: backgrounColor,
                // ),
                // rowStyle("Notificações"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container rowStyle(String nome1, Function navigator) {
    return Container(
      height: 40,
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell(
            onTap: navigator,
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
        ],
      ),
    );
  }
}
