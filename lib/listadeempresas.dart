import 'package:exampleflutter/estruturas.dart';
import 'package:exampleflutter/produtosPages.dart';
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
    // Size size = MediaQuery.of(context).size;
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
                    color: backgrounColor, //.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(bordas),
                  ),
                ),
              ),
              //lista de na vertical.............................................
              Container(
                padding: paddingPadrao,
                height: 35,
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
                    Divider(
                      color: Colors.transparent,
                      height: 7,
                    ),
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
    // Size size = MediaQuery.of(context).size;
    List<Widget> listaDeEmpresas = new List();
    for (int i = 0; i < empresalist.length; i++) {
      listaDeEmpresas.add(CardEmpresa(
        empresalist[i].image,
        empresalist[i].description,
        empresalist[i].avaliacao,
        () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProdutosPages(
                empresalista: empresalist[i],
              ),
            ),
          );
        },
      ));
    }
    ;
    return listaDeEmpresas;
  }
}
