// import 'package:exampleflutter/PageEmpresas.dart';
import 'package:exampleflutter/listadeempresas.dart';
import 'package:flutter/material.dart';
import 'package:exampleflutter/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:exampleflutter/empresaPages.dart';

import 'estruturas.dart';

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
        backgroundColor: primaryColor,
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
          color: backgrounColor,
          child: Column(
            children: <Widget>[
              Container(
                child: search_box(
                  "Buscar Empresa",
                  BoxDecoration(
                    color: backgrounColor2,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              WidgetName("Promoções"),

              Container(
                color: backgrounColor2,
                child: CarouselSlider(
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
              ),
              //efeito carrossel
              // carouselSlider =
              Container(
                decoration: BoxDecoration(
                  color: backgrounColor2,
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
                        color:
                            _current == index ? primaryColor : backgrounColor,
                      ),
                    );
                  }),
                ),
              ),

              //..........fim do desing de promções..........................

              Container(
                color: backgrounColor,
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
                      color: backgrounColor2,
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
                                      builder: (context) => EmpresaPage()));
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
                                      builder: (context) => EmpresaPage()));
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
                                      builder: (context) => EmpresaPage()));
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
                    WidgetName("Esporte"),
                    Containerdesiner1(
                      listadeProdutos[0].image,
                      listadeProdutos[0].nome,
                      listadeProdutos[0].descricao,
                      listadeProdutos[0].loja,
                      listadeProdutos[0].preco1,
                      listadeProdutos[0].preco2,
                      listadeProdutos[1].image,
                      listadeProdutos[1].nome,
                      listadeProdutos[1].descricao,
                      listadeProdutos[1].loja,
                      listadeProdutos[1].preco1,
                      listadeProdutos[1].preco2,
                      listadeProdutos[5].image,
                      listadeProdutos[5].nome,
                      listadeProdutos[5].descricao,
                      listadeProdutos[5].loja,
                      listadeProdutos[5].preco1,
                      listadeProdutos[5].preco2,
                    ),
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
                    WidgetName("Variedades"),
                    Containerdesiner1(
                      listadeProdutos[3].image,
                      listadeProdutos[3].nome,
                      listadeProdutos[3].descricao,
                      listadeProdutos[3].loja,
                      listadeProdutos[3].preco1,
                      listadeProdutos[3].preco2,
                      listadeProdutos[4].image,
                      listadeProdutos[4].nome,
                      listadeProdutos[4].descricao,
                      listadeProdutos[4].loja,
                      listadeProdutos[4].preco1,
                      listadeProdutos[4].preco2,
                      listadeProdutos[1].image,
                      listadeProdutos[1].nome,
                      listadeProdutos[1].descricao,
                      listadeProdutos[1].loja,
                      listadeProdutos[1].preco1,
                      listadeProdutos[1].preco2,
                    ),
                    BottomText(
                      context,
                      "Ver todos de Variedades",
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
          color: backgrounColor2,
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
              style: subtituloPrimaryColor,
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

List<Widget> ListContainer(
  String image1,
  String nomedoP1,
  String descricao1,
  String loja1,
  String preco11,
  String preco21,
  String image2,
  String nomedoP2,
  String descricao2,
  String loja2,
  String preco12,
  String preco22,
  String image3,
  String nomedoP3,
  String descricao3,
  String loja3,
  String preco13,
  String preco23,
) {
  List<Widget> listaempresa = List();

  Container StyleContainer(String image, String nomedoP, String descricao,
      String loja, String preco1, String preco2) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      height: 150,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: backgrounColor,
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
              //color: backgrounColor,
              borderRadius: BorderRadius.circular(bordas),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              //type: MaterialType.transparency,
              child: Image(
                image: AssetImage(image),
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
            // color: backgrounColor,
            //alignment: Alignment.centerRight,
            child: Stack(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    width: double.maxFinite,
                    child: Text(
                      nomedoP,
                      style: tituloPrimaryColor,
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 25,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    //height: 50,
                    width: 120,
                    margin: EdgeInsets.all(0),
                    child: Text(
                      descricao,
                      style: textonormalPrimaryColor,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  left: 0,
                  child: Text(
                    loja,
                    style: subtituloPrimaryColor,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: <Widget>[
                      Text(
                        "RS",
                        style: tituloPrimaryColor,
                      ),
                      VerticalDivider(
                        width: 5,
                        color: Colors.transparent,
                      ),
                      Text(
                        preco1,
                        style: tituloPrimaryColor,
                      ),
                      Text(
                        "," + preco2,
                        style: subtituloPrimaryColor,
                      ),
                      Text(
                        "ou 3x cartão",
                        textAlign: TextAlign.end,
                        style: textonormalPrimaryColor,
                      ),
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

  listaempresa.add(
      StyleContainer(image1, nomedoP1, descricao1, loja1, preco11, preco21));
  listaempresa.add(
      StyleContainer(image2, nomedoP2, descricao2, loja2, preco12, preco22));
  listaempresa.add(
      StyleContainer(image3, nomedoP3, descricao3, loja3, preco13, preco23));

  return listaempresa;
}

Container Containerdesiner1(
  String image1,
  String nomedoP1,
  String descri1,
  String loja1,
  String preco11,
  String preco21,
  String image2,
  String nomedoP2,
  String descri2,
  String loja2,
  String preco12,
  String preco22,
  String image3,
  String nomedoP3,
  String descri3,
  String loja3,
  String preco13,
  String preco23,
) {
  return Container(
    width: double.maxFinite,
    padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 5),
    decoration: BoxDecoration(
      color: backgrounColor2,
    ),
    child: Column(
      children: ListContainer(
        image1,
        nomedoP1,
        descri1,
        loja1,
        preco11,
        preco21,
        image2,
        nomedoP2,
        descri2,
        loja2,
        preco12,
        preco22,
        image3,
        nomedoP3,
        descri3,
        loja3,
        preco13,
        preco23,
      ),
    ),
  );
}

Container WidgetName(String name) {
  return Container(
    padding: EdgeInsets.only(left: 10, top: 7, bottom: 0),
    height: 30,
    width: double.infinity,
    decoration: BoxDecoration(
      color: backgrounColor2,
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(bordas),
        topLeft: Radius.circular(bordas),
      ),
    ),
    child: Text(
      name,
      style: tituloPrimaryColor,
    ),
  );
}

Container Containerdesiner2(String imag1, Function tap) {
  return Container(
    decoration: BoxDecoration(
      color: backgrounColor2,
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
              color: backgrounColor2,
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
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: backgrounColor2,
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
                InkWell(
                  child: Container(
                    height: double.infinity,
                    width: 140,
                    padding: EdgeInsets.all(1),
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: backgrounColor2,
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
                InkWell(
                  child: Container(
                    height: double.infinity,
                    width: 140,
                    padding: EdgeInsets.all(1),
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: backgrounColor2,
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
                InkWell(
                  child: Container(
                    height: double.infinity,
                    width: 140,
                    padding: EdgeInsets.all(1),
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: backgrounColor2,
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
                InkWell(
                  child: Container(
                    height: double.infinity,
                    width: 140,
                    padding: EdgeInsets.all(1),
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: backgrounColor2,
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
                InkWell(
                  child: Container(
                    height: double.infinity,
                    width: 140,
                    padding: EdgeInsets.all(1),
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: backgrounColor2,
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
                InkWell(
                  child: Container(
                    height: double.infinity,
                    width: 140,
                    padding: EdgeInsets.all(1),
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: backgrounColor2,
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
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
