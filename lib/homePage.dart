// import 'package:exampleflutter/PageEmpresas.dart';
import 'package:exampleflutter/listadeempresas.dart';
import 'package:flutter/material.dart';
import 'package:exampleflutter/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:exampleflutter/PageEmpresas.dart';

import 'empresalist.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

//tema padrão da pag
const texto1 = titulo1;
const texto2 = titulo2;
const cor1 = primaryColor;
const cor2 = secondaryColor;
const corfundo = backgrounColor;
const Color colorIconDrawn = cor1;
//const onpressed = () {Navigator.push(context,MaterialPageRoute(builder: (context) => Listadeempresas()));};

class _HomePageState extends State<HomePage> {
  _HomePageState();

  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    'images/promonike1.png',
    'images/promonike2.png',
    'images/promonike3.png',
    'images/promohavan1.png',
    'images/promohavan2.png',
  ];

  //Size size = MediaQuery.of(context).size;

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: corfundo,
      drawer: BuildDrawer(context, primaryColor),
      appBar: AppBar(
        backgroundColor: cor1,
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
        child: Container(
          padding: paddingPadrao,
          color: corfundo,
          child: Column(
            children: <Widget>[
              Container(
                child: search_box(
                  "Buscar Empresa",
                  BoxDecoration(
                    color: cor1,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              WidgetName("Promoções"),
              //efeito carrossel
              carouselSlider = CarouselSlider(
                options: CarouselOptions(
                  height: 300.0,
                  //enableInfiniteScroll: true,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 5),
                  autoPlayAnimationDuration: Duration(milliseconds: 1700),
                  autoPlayCurve: Curves.easeInOut,
                  // enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
                items: imgList.map((imgUrl) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Column(children: <Widget>[
                        imageBuilder(imgUrl),
                      ]);
                    },
                  );
                }).toList(),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(bordas),
                    bottomRight: Radius.circular(bordas),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: map<Widget>(imgList, (index, url) {
                    return Container(
                      width: 10.0,
                      height: 10.0,
                      margin: EdgeInsets.only(
                        top: 10,
                        left: 3,
                        right: 3,
                        bottom: 10,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _current == index ? cor1 : cor2,
                      ),
                    );
                  }),
                ),
              ),

              //..........fim do desing de promções..........................

              Container(
                color: corfundo,
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  children: <Widget>[
                    Divider(
                      height: 20,
                      color: Colors.transparent,
                    ),
                    WidgetName("Empresas"),
                    Container(
                      // height: 290,
                      width: double.maxFinite,
                      padding: paddingPadrao,
                      // margin: EdgeInsets.all(4),
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      //),
                      child: Column(
                        children: <Widget>[
                          Divider(
                            height: 5,
                            color: Colors.transparent,
                          ),
                          CardEmpresa(
                            empresalist[0].image,
                            empresalist[0].description,
                            empresalist[0].avaliacao,
                            () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PageEmpresas()));
                            },
                          ),
                          CardEmpresa(
                            empresalist[1].image,
                            empresalist[1].description,
                            empresalist[1].avaliacao,
                            () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PageEmpresas()));
                            },
                          ),
                          CardEmpresa(
                            empresalist[2].image,
                            empresalist[2].description,
                            empresalist[2].avaliacao,
                            () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PageEmpresas()));
                            },
                          ),
                          Divider(
                            height: 5,
                            color: Colors.transparent,
                          ),
                        ],
                      ),
                    ),
                    BottomText(
                      context,
                      "Ver todas as Empresas",
                      () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Listadeempresas()));
                      },
                    ),
                    Divider(
                      height: 20,
                      color: Colors.transparent,
                    ),
                    WidgetName("Tecnologia"),
                    Containerdesiner1(3),
                    BottomText(
                      context,
                      "Ver todos de Tecnologia",
                      () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Listadeempresas()));
                      },
                    ),
                    Divider(
                      height: 20,
                      color: Colors.transparent,
                    ),
                    WidgetName("Esporte"),
                    Containerdesiner1(3),
                    BottomText(
                      context,
                      "Ver todos de Esportes",
                      () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Listadeempresas()));
                      },
                    ),
                    Divider(
                      height: 20,
                      color: Colors.transparent,
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
                    Divider(
                      color: Colors.transparent,
                      height: 20,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  } //fim do body

//constants..................................................................................

//imagens das promoções
  Container imageBuilder(String image) {
    return Container(
      height: 290,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(left: 0, right: 0, top: 0),
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: backgrounColor2,
      ),
      child: Container(
        height: 290,
        width: double.maxFinite,
        // padding: EdgeInsets.only(top: 0, bottom: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: backgrounColor2,
        ),
        child: Material(
          borderRadius: BorderRadius.circular(5),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          //type: MaterialType.transparency,
          child: Image(
            image: AssetImage(image),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}

//texto em baixo
InkWell BottomText(BuildContext context, String nome, Function pressione) =>
    InkWell(
      child: Container(
        alignment: Alignment.bottomRight,
        padding: EdgeInsets.only(right: 10, top: 4, bottom: 8),
        height: 30,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(bordas),
            bottomLeft: Radius.circular(bordas),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              nome,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: primaryColor,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: primaryColor,
              size: 13,
            )
          ],
        ),
      ),
      onTap: pressione,
    );

List<Widget> ListContainer(int tamanho) {
  List<Widget> listaempresa = List();

  Container StyleContainer(Color corContainer) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      height: 150,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: corContainer,
        borderRadius: BorderRadius.circular(bordas),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              bottom: 5,
              top: 5,
            ),
            margin: EdgeInsets.only(left: 5),
            height: 150,
            width: 150,
            child: Material(
              elevation: 0.0,
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              //type: MaterialType.transparency,
              child: Image(
                image: AssetImage("images/promonike3.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          VerticalDivider(
            width: 10,
            color: Colors.transparent,
          ),
          Container(
            margin: EdgeInsets.only(top: 5, bottom: 5),
            padding: EdgeInsets.only(left: 5),
            height: double.maxFinite,
            width: 150,
            color: primaryColor,
            //alignment: Alignment.centerRight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: double.maxFinite,
                  child: Text(
                    "nome do produto",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                Divider(
                  height: 5,
                  color: Colors.transparent,
                ),
                Text(
                  "Descrição bla ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
                Divider(
                  height: 10,
                  color: Colors.transparent,
                ),
                Text(
                  "Nike",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                Divider(
                  height: 15,
                  color: Colors.transparent,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "RS",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    VerticalDivider(
                      width: 5,
                      color: Colors.transparent,
                    ),
                    Text(
                      "35",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      ",90 ",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    Text(
                      "ou 3x cartão",
                      textAlign: TextAlign.end,
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  for (int i = 0; i < tamanho; i++) {
    listaempresa.add(StyleContainer(cor1));
  }
  ;

  return listaempresa;
}

Container Containerdesiner1(int tam) {
  Color corMaior = Colors.white;

  return Container(
    width: double.maxFinite,
    padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 5),
    decoration: BoxDecoration(
      // borderRadius: BorderRadius.only(
      //   bottomLeft: Radius.circular(bordas),
      //   bottomRight: Radius.circular(bordas),
      // ),
      // borderRadius: BorderRadius.circular(bordas),
      color: corMaior,
    ),
    child: Column(
      children: ListContainer(tam),
    ),
  );
}

Container WidgetName(String name) {
  return Container(
    padding: EdgeInsets.only(left: 10, top: 7, bottom: 0),
    height: 30,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(bordas),
        topLeft: Radius.circular(bordas),
      ),
    ),
    child: Text(
      name,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: cor1,
      ),
    ),
  );
}

Container buildContainer(
  BuildContext context,
  String indexTexto,
  Icon indexIcon,
) {
  return Container(
    margin: EdgeInsets.only(right: 10, left: 10, top: 5),
    height: 60,
    alignment: Alignment.centerLeft,
    decoration: BoxDecoration(
      color: corfundo,
    ),
    child: FlatButton(
      color: backgrounColor2,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(bordas),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
      ),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Listadeempresas()));
      },
    ),
  );
}

Container Containerdesiner2(String imag1, Function tap) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(bordas),
        bottomLeft: Radius.circular(bordas),
      ),
    ),
    child: Column(
      children: <Widget>[
        InkWell(
          onTap: tap,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(bordas),
                bottomLeft: Radius.circular(bordas),
              ),
            ),
            height: 160,
            padding: EdgeInsets.all(10),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                InkWell(
                  child: Container(
                    height: double.infinity,
                    width: 140,
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: corfundo,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Material(
                      elevation: 0.5,
                      color: Colors.white,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      type: MaterialType.button,
                      child: Image(
                        image: AssetImage(imag1),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                VerticalDivider(
                  color: Colors.transparent,
                  width: 10,
                ),
                Container(
                  height: double.infinity,
                  width: 140,
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    color: corfundo,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Material(
                    elevation: 0.5,
                    color: corfundo,
                    borderRadius: BorderRadius.circular(5),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    type: MaterialType.button,
                    child: Image(
                      image: AssetImage(imag1),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                VerticalDivider(
                  color: Colors.transparent,
                  width: 10,
                ),
                Container(
                  height: double.infinity,
                  width: 140,
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    color: corfundo,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Material(
                    elevation: 0.5,
                    color: corfundo,
                    borderRadius: BorderRadius.circular(5),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    type: MaterialType.button,
                    child: Image(
                      image: AssetImage(imag1),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                VerticalDivider(
                  color: Colors.transparent,
                  width: 10,
                ),
                Container(
                  height: double.infinity,
                  width: 140,
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    color: corfundo,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Material(
                    elevation: 0.5,
                    color: corfundo,
                    borderRadius: BorderRadius.circular(5),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    type: MaterialType.button,
                    child: Image(
                      image: AssetImage(imag1),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                VerticalDivider(
                  color: Colors.transparent,
                  width: 10,
                ),
                Container(
                  height: double.infinity,
                  width: 140,
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    color: corfundo,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Material(
                    elevation: 0.5,
                    color: corfundo,
                    borderRadius: BorderRadius.circular(5),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    type: MaterialType.button,
                    child: Image(
                      image: AssetImage(imag1),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                VerticalDivider(
                  color: Colors.transparent,
                  width: 10,
                ),
                Container(
                  height: double.infinity,
                  width: 140,
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    color: corfundo,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Material(
                    elevation: 0.5,
                    color: corfundo,
                    borderRadius: BorderRadius.circular(5),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    type: MaterialType.button,
                    child: Image(
                      image: AssetImage(imag1),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                VerticalDivider(
                  color: Colors.transparent,
                  width: 10,
                ),
                Container(
                  height: double.infinity,
                  width: 140,
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    color: corfundo,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Material(
                    elevation: 0.5,
                    color: corfundo,
                    borderRadius: BorderRadius.circular(5),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    type: MaterialType.button,
                    child: Image(
                      image: AssetImage(imag1),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
