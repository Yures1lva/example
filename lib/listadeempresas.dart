import 'package:exampleflutter/empresalist.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:exampleflutter/constants.dart';
import 'package:exampleflutter/homePage.dart';

class Listadeempresas extends StatefulWidget {
  const Listadeempresas({
    Key key,
  }) : super(key: key);
  @override
  _ListadeempresasState createState() => _ListadeempresasState();
}

class _ListadeempresasState extends State<Listadeempresas> {
  Empresalist empresa = new Empresalist();

  int selectedIndex = 0;
  List categoria = [
    "Esportes",
    "Tecnologia",
    "Cozinha",
    "Roupas",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                  // height: 800,
                  width: double.maxFinite,
                  padding: paddingPadrao,
                  decoration: BoxDecoration(
                    color: backgrounColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(19),
                      topRight: Radius.circular(19),
                      bottomLeft: Radius.circular(bordas),
                      bottomRight: Radius.circular(bordas),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Divider(
                        color: Colors.transparent,
                        height: 20,
                      ),
                      CardEmpresa(size, empresalist[1].image,
                          empresalist[1].description, empresalist[1].avaliacao),
                      Divider(
                        color: Colors.transparent,
                        height: 20,
                      ),
                      CardEmpresa(size, empresalist[2].image,
                          empresalist[2].description, empresalist[2].avaliacao),
                      Divider(
                        color: Colors.transparent,
                        height: 20,
                      ),
                      CardEmpresa(size, empresalist[3].image,
                          empresalist[3].description, empresalist[3].avaliacao),
                      Divider(
                        color: Colors.transparent,
                        height: 20,
                      ),
                      CardEmpresa(size, empresalist[4].image,
                          empresalist[4].description, empresalist[4].avaliacao),
                      Divider(
                        color: Colors.transparent,
                        height: 20,
                      ),
                      CardEmpresa(size, empresalist[5].image,
                          empresalist[5].description, empresalist[5].avaliacao),
                      Divider(
                        color: Colors.transparent,
                        height: 20,
                      ),
                      GerarContainer(),
                      Divider(
                        color: Colors.transparent,
                        height: 20,
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Container GerarContainer() {
    Size size = MediaQuery.of(context).size;
    for (int i = 0; i < empresalist.length; i++) {
      return CardEmpresa(size, empresalist[i].image, empresalist[i].description,
          empresalist[i].avaliacao);
    }
    ;
  }

  Container CardEmpresa(
      Size size, String image, String descricao, double avaliacao) {
    return Container(
      height: 85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            child: InkWell(
              onTap: null, //press,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: secondaryColor),
                    child: Container(
                      margin: EdgeInsets.only(left: 4),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [elevation],
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                  Positioned(
                    left: 15,
                    bottom: 0,
                    top: 0,
                    child: Container(
                      padding: EdgeInsets.only(bottom: 10, top: 10),
                      height: 100,
                      width: 130,
                      child: Material(
                        elevation: 0.0,
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        //type: MaterialType.transparency,
                        child: Image(
                          image: AssetImage(image),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  //posição da descrição.........................................
                  Positioned(
                    bottom: 0,
                    right: 20,
                    child: SizedBox(
                      height: 80,
                      width: size.width - 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 0),
                            child: Text(descricao, style: textonormal2),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),
                  //posição da avaliação.......................................
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 20,
                        width: 90,
                        padding:
                            EdgeInsets.symmetric(horizontal: 7, vertical: 2.5
                                // vertical: symetricPad * 2,
                                ),
                        decoration: BoxDecoration(
                            color: secondaryColor,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(8),
                                topLeft: Radius.circular(8))),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: StarList(avaliacao),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<Widget> StarList(double estrela) {
  List<Widget> listaDeEstrelas = new List();

  if (estrela == 1) {
    for (var i = 0; i < estrela; i++) {
      listaDeEstrelas.add(starStyle1);
      listaDeEstrelas.add(starStyle3);
      listaDeEstrelas.add(starStyle3);
      listaDeEstrelas.add(starStyle3);
      listaDeEstrelas.add(starStyle3);

      return listaDeEstrelas;
    }
  } else if (estrela == 2) {
    for (var i = 0; i < estrela; i++) {
      listaDeEstrelas.add(starStyle1);
      listaDeEstrelas.add(starStyle1);
      listaDeEstrelas.add(starStyle3);
      listaDeEstrelas.add(starStyle3);
      listaDeEstrelas.add(starStyle3);

      return listaDeEstrelas;
    }
  } else if (estrela == 3) {
    for (var i = 0; i < estrela; i++) {
      listaDeEstrelas.add(starStyle1);
      listaDeEstrelas.add(starStyle1);
      listaDeEstrelas.add(starStyle1);
      listaDeEstrelas.add(starStyle3);
      listaDeEstrelas.add(starStyle3);

      return listaDeEstrelas;
    }
  } else if (estrela == 4) {
    for (var i = 0; i < estrela; i++) {
      listaDeEstrelas.add(starStyle1);
      listaDeEstrelas.add(starStyle1);
      listaDeEstrelas.add(starStyle1);
      listaDeEstrelas.add(starStyle1);
      listaDeEstrelas.add(starStyle3);

      return listaDeEstrelas;
    }
  } else if (estrela == 4.5) {
    for (var i = 0; i < estrela; i++) {
      listaDeEstrelas.add(starStyle1);
      listaDeEstrelas.add(starStyle1);
      listaDeEstrelas.add(starStyle1);
      listaDeEstrelas.add(starStyle1);
      listaDeEstrelas.add(starStyle2);

      return listaDeEstrelas;
    }
  } else if (estrela == 5) {
    for (var i = 0; i < estrela; i++) {
      listaDeEstrelas.add(starStyle1);
      listaDeEstrelas.add(starStyle1);
      listaDeEstrelas.add(starStyle1);
      listaDeEstrelas.add(starStyle1);
      listaDeEstrelas.add(starStyle1);

      return listaDeEstrelas;
    }
  }
  ;
}
