import 'package:exampleflutter/ProductCard.dart';
import 'package:exampleflutter/empresalist.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:exampleflutter/constants.dart';
import 'package:exampleflutter/homePage.dart';

class Listadeempresas extends StatefulWidget {
  @override
  _ListadeempresasState createState() => _ListadeempresasState();
}

class _ListadeempresasState extends State<Listadeempresas> {
  int selectedIndex = 0;
  List categoria = [
    "Esportes",
    "Tecnologia",
    "Cozinha",
    "Roupas",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        drawer: BuildDrawer(context, secondaryColor),
        appBar: AppBar(
          backgroundColor: secondaryColor,
          elevation: 0,
          centerTitle: false,
          title: Text(
            "Empresas",
            style: titulo1,
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.apartment,
                  color: iconColor,
                ),
                onPressed: null)
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  padding: paddingPadrao,
                  child: search_box(
                    "Buscar Empresa ou Produto",
                    BoxDecoration(
                      color: primaryColor, //.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
//lista de na vertical.......................................................................................
                Container(
                  padding: paddingPadrao,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(bordas),
                  ),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categoria.length,
                      itemBuilder: (context, index) => GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Container(
                              alignment: Alignment
                                  .center, //alinhando os widgets presentes no container
                              margin: EdgeInsets.only(
                                right: 10.0,
                                // right: index == categoria.length ? symetricPad : 0
                              ),
                              padding:
                                  EdgeInsets.symmetric(horizontal: symetricPad),
                              decoration: BoxDecoration(
                                  color: index == selectedIndex
                                      ? secondaryColor
                                      : primaryColor, //Colors.white.withOpacity(0.4),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text(
                                categoria[index],
                                style: textonormal,
                              ),
                            ),
                          )),
                ),

                Divider(
                  height: 50,
                  color: Colors.transparent,
                ),
                Container(
                  height: 800,
                  padding: paddingPadrao,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(22),
                      bottomLeft: Radius.circular(bordas),
                      bottomRight: Radius.circular(bordas),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Divider(
                        color: Colors.transparent,
                        height: 565,
                      ),
                      WidgetName("Favoritos"),
                      Containerdesiner2(
                        'images/promonike2.png',
                        () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Listadeempresas()));
                        },
                      ),
                      BottomText(
                        context,
                        "Ver categoria",
                        () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Listadeempresas()));
                        },
                      ),
                    ],
                  ),
                ),

                // Buildcontainer3(),
                // ListView.builder(
                //   itemCount: empresalist.length,
                //   itemBuilder: (context, index) => ProductCard(
                //     itemIndex: index,
                //     product: empresalist[index],
                //     press: () {
                //       Navigator.push(context,
                //           MaterialPageRoute(builder: (context) => PageEmpresas()));
                //     },
                //   ),
                // ),
              ],
            ),
          ),
        ));
  }
}

Container Buildcontainer3() {
  for (int i = 0; i < empresalist.length; i++) {
    ProductCard(
      // itemIndex: i,
      product: empresalist[i],
    );
  }
  ;
}
