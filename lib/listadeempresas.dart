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

  List categoria = ["Todas", "Esportes", "Tecnologia", "Comida", "Moda", "Bar"];

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
              //lista de na vertical.............................................
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
                            width: 90,
                            alignment: Alignment
                                .center, //alinhando os widgets presentes no container
                            margin: EdgeInsets.only(
                              right: 10.0,
                            ),
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
                height: 10,
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
                    Container(
                      child: Column(
                        children: GerarContainer(),
                      ),
                    ),
                    Divider(
                      color: Colors.transparent,
                      height: 7,
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
      ),
    );
  }

  List<Widget> GerarContainer() {
    Size size = MediaQuery.of(context).size;
    List<Widget> listaDeEmpresas = new List();
    for (int i = 0; i < empresalist.length; i++) {
      listaDeEmpresas.add(CardEmpresa(size, empresalist[i].image,
          empresalist[i].description, empresalist[i].avaliacao));
    }
    ;
    return listaDeEmpresas;
  }

  Container CardEmpresa(
      Size size, String image, String descricao, double avaliacao) {
    return Container(
      height: 90,
      margin: EdgeInsets.symmetric(vertical: 5),
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
                    top: 10,
                    right: 20,
                    child: SizedBox(
                      height: 80,
                      width: size.width - 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 12),
                            child: Text(descricao, style: textonormal2),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ),
                  //posição da avaliação.........................................
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
