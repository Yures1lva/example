import 'package:exampleflutter/listadeempresas.dart';
import 'package:flutter/material.dart';
import 'package:exampleflutter/constants.dart';
//import 'package:exampleflutter/search_box.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

const Color colorIconDrawn = secondaryColor;
//const onpressed = () {Navigator.push(context,MaterialPageRoute(builder: (context) => Listadeempresas()));};

class _HomePageState extends State<HomePage> {
  _HomePageState();

  int _current = 0;
  List indexImages = [
    'images/promonike1.png',
    'images/promonike2.png',
    'images/promonike3.png',
    'images/promohavan1.png',
    'images/promohavan2.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgrounColor,
      drawer: buildDrawer(context),
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            search_box(
              "Buscar Empresa",
              BoxDecoration(
                color: Color(0xff91aec1), //.withOpacity(0.4),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20.0,
                right: 20,
                top: 5,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 0,
              ),
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: secondaryColor,
              ),
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 20,
                      bottom: 0,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: symetricPad,
                    ),
                    height: 280,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(2.5),
                        bottomRight: Radius.circular(2.5),
                      ),
                      color: primaryColor,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 280,
                      bottom: 0,
                    ),
                    //  padding: EdgeInsets.symmetric( horizontal: symetricPad,),
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(2.5),
                        bottomRight: Radius.circular(2.5),
                      ),
                      color: Colors.black, //primaryColor,
                    ),

                    /*Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "alo",
                          style: TextStyle(color: Colors.white),
                        ),
                         Container(
                          padding: EdgeInsets.only(
                            top: 281,
                          ),
                          height: 10,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ],
                    ),*/
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Drawer buildDrawer(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
                Container(
                  color: secondaryColor,
                  height: 130,
                  width: double.infinity,
                  padding: EdgeInsets.only(
                    top: 90,
                    left: 30,
                  ),
                  child: Text(
                    "Olá Yure",
                    style: titulo2,
                  ),
                ),
                buildContainer(
                    context,
                    "Início",
                    Icon(
                      Icons.home,
                      color: colorIconDrawn,
                      size: 30,
                    ),
                    130),
                buildDivider(375), // padding up: index + 120
                buildContainer(
                    context,
                    "Perfil",
                    Icon(
                      Icons.person,
                      color: colorIconDrawn,
                      size: 30,
                    ),
                    190),
                buildDivider(495),
                buildContainer(
                    context,
                    "Compras",
                    Icon(
                      Icons.shopping_cart,
                      color: colorIconDrawn,
                      size: 30,
                    ),
                    250),
                buildDivider(615),
                buildContainer(
                    context,
                    "Favoritos",
                    Icon(
                      Icons.favorite,
                      color: colorIconDrawn,
                      size: 30,
                    ),
                    310),
                buildDivider(735),
                buildContainer(
                    context,
                    "Início",
                    Icon(
                      Icons.home,
                      color: colorIconDrawn,
                      size: 30,
                    ),
                    370),
                buildDivider(855),
                buildContainer(
                    context,
                    "Configuração",
                    Icon(
                      Icons.settings,
                      color: colorIconDrawn,
                      size: 30,
                    ),
                    370),
                buildDivider(975),
                buildContainer(
                    context,
                    "Mais",
                    Icon(
                      Icons.more,
                      color: colorIconDrawn,
                      size: 30,
                    ),
                    370),
                buildDivider(1095),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Divider buildDivider(double indexH) {
    return Divider(
      color: secondaryColor,
      height: indexH, //sempre + 120
      thickness: 2,
      indent: 20,
      endIndent: 20,
    );
  }

  Container buildContainer(
    BuildContext context,
    String indexTexto,
    Icon indexIcon,
    double indexP,
  ) {
    return Container(
      margin: EdgeInsets.only(right: 0, left: 0, top: indexP),
      height: 60,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(color: Colors.white),
      child: SizedBox.expand(
        child: FlatButton(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              indexIcon,
              VerticalDivider(
                width: 30,
                color: Colors.transparent,
              ),
              Text(
                indexTexto,
                style: titulo2,
                textAlign: TextAlign.left,
              ),
            ],
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Listadeempresas()));
          },
        ),
      ),
    );
  }
}
