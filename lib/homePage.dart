import 'package:exampleflutter/PageEmpresas.dart';
import 'package:exampleflutter/listadeempresas.dart';
import 'package:flutter/material.dart';
import 'package:exampleflutter/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

//tema padrão da pag
const texto1 = titulo1;
const texto2 = titulo2;
const bGroundColor = Colors.white60;
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
      drawer: buildDrawer(context),
      appBar: AppBar(
        backgroundColor: cor2,
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
            Container(
              child: search_box(
                "Buscar Empresa",
                BoxDecoration(
                  color: cor2,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            //..........começo do desing de promções..........................
            // Container(
            //   height: 22,
            //   decoration: BoxDecoration(
            //     color: bGroundColor,
            //     borderRadius: BorderRadius.only(
            //       topLeft: Radius.circular(bordas),
            //       bottomRight: Radius.circular(bordas),
            //     ),
            //   ),
            //   width: double.infinity,
            //   padding: EdgeInsets.only(left: 30),
            //   child: Text(
            //     "Promoções",
            //     style: TextStyle(
            //       fontSize: 20,
            //       fontWeight: FontWeight.w600,
            //       color: cor2,
            //     ),
            //   ),
            // ),

            WidgetName("Promoções"),
            //efeito carrossel
            carouselSlider = CarouselSlider(
              options: CarouselOptions(
                height: 300.0,
                //enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 5),
                autoPlayAnimationDuration: Duration(milliseconds: 1700),
                autoPlayCurve: Curves.easeInOut, //Curves.easeOutQuad,
                //enlargeCenterPage: true,
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
                color: bGroundColor,
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
                    margin:
                        EdgeInsets.only(left: 3, right: 3, bottom: 10, top: 5),
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
              height: 1200,
              color: corfundo,
              margin: EdgeInsets.only(top: 20),
              child: Column(
                children: <Widget>[
                  Divider(
                    height: 20,
                    color: Colors.transparent,
                  ),
                  WidgetName("Ver Empresas"),
                  Containerdesiner1(
                    300, //tam geral
                    130, //height interno
                    180, //widdh interno
                    //imagens
                    "images/nikeicon.png",
                    "images/havanicon.png",
                    "images/atacadaoicon.png",
                    "images/centauroicon.png",
                    //press na imagem 1
                    () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PageEmpresas()));
                    },
                  ),
                  WidgetName("Esportes"),
                  Containerdesiner1(
                    150,
                    55,
                    180,
                    "images/nikeicon.png",
                    "images/nikeicon.png",
                    "images/havanicon.png",
                    "images/havanicon.png",
                    () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PageEmpresas()));
                    },
                  ),
                  WidgetName("Tecnologia"),
                  Containerdesiner1(
                    150,
                    55,
                    180,
                    "images/nikeicon.png",
                    "images/nikeicon.png",
                    "images/havanicon.png",
                    "images/havanicon.png",
                    () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PageEmpresas()));
                    },
                  ),
                  WidgetName("Cozinha"),
                  Containerdesiner1(
                    150,
                    55,
                    180,
                    "images/nikeicon.png",
                    "images/nikeicon.png",
                    "images/havanicon.png",
                    "images/havanicon.png",
                    () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PageEmpresas()));
                    },
                  ),
                  WidgetName("Favoritos"),
                  Containerdesiner2('images/promonike2.png')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container Containerdesiner1(double height, double hTamanho, double wTamanho,
      String img1, String img2, String img3, String img4, Function press) {
    Color corMAior = bGroundColor;
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: bGroundColor,
        borderRadius: BorderRadius.circular(5),
      ),
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
        bottom: 10,
      ),
      child: Container(
        height: 30,
        width: double.infinity,
        padding: EdgeInsets.only(
          top: 10,
        ),
        decoration: BoxDecoration(
          color: corMAior,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: hTamanho,
                  width: wTamanho,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: corMAior,
                    borderRadius: BorderRadius.circular(bordas),
                  ),
                  child: FlatButton(
                    highlightColor: corfundo,
                    splashColor: corfundo,
                    height: hTamanho,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(bordas),
                    ),
                    child: Material(
                      elevation: 0.5,
                      borderRadius: BorderRadius.circular(5),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      // type: MaterialType.transparency,
                      child: Image(
                        width: wTamanho,
                        image: AssetImage(img1),
                        fit: BoxFit.fill,
                      ),
                    ),
                    onPressed: press,
                  ),
                ),
                Container(
                  height: hTamanho,
                  width: wTamanho,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: corMAior,
                    borderRadius: BorderRadius.circular(bordas),
                  ),
                  child: FlatButton(
                    highlightColor: corfundo,
                    splashColor: corfundo,
                    height: hTamanho,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(bordas),
                    ),
                    child: Material(
                      elevation: 0.5,
                      borderRadius: BorderRadius.circular(5),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      //type: MaterialType.transparency,
                      child: Image(
                        width: wTamanho,
                        image: AssetImage(img2),
                        fit: BoxFit.fill,
                      ),
                    ),
                    onPressed: press,
                  ),
                ),
              ],
            ),
            Divider(
              height: 15,
              color: Colors.transparent,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: hTamanho,
                  width: wTamanho,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: corMAior,
                    borderRadius: BorderRadius.circular(bordas),
                  ),
                  child: FlatButton(
                    highlightColor: corfundo,
                    splashColor: corfundo,
                    height: hTamanho,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(bordas),
                    ),
                    child: Material(
                      elevation: 0.5,
                      borderRadius: BorderRadius.circular(5),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      //type: MaterialType.transparency,
                      child: Image(
                        width: wTamanho,
                        image: AssetImage(img3),
                        fit: BoxFit.fill,
                      ),
                    ),
                    onPressed: press,
                  ),
                ),
                Container(
                  height: hTamanho,
                  width: wTamanho,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: corMAior,
                    borderRadius: BorderRadius.circular(bordas),
                  ),
                  child: FlatButton(
                    highlightColor: corfundo,
                    splashColor: corfundo,
                    height: hTamanho,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(bordas),
                    ),
                    child: Material(
                      elevation: 0.5,
                      borderRadius: BorderRadius.circular(5),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      //type: MaterialType.transparency,
                      child: Image(
                        width: wTamanho,
                        image: AssetImage(img4),
                        fit: BoxFit.fill,
                      ),
                    ),
                    onPressed: press,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container Containerdesiner2(String img1) {
    Color backGColor = corfundo;
    return Container(
      height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: bGroundColor,
      ),
      child: Column(
        children: <Widget>[
          Container(
            height: 140,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: bGroundColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  height: double.infinity,
                  width: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Material(
                    elevation: 0.5,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    type: MaterialType.button,
                    child: Image(
                      image: AssetImage(img1),
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
                  decoration: BoxDecoration(
                    color: cor1,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Material(
                    elevation: 0.5,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    //type: MaterialType.transparency,
                    shadowColor: Colors.black,
                    child: Image(
                      image: AssetImage(img1),
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
                  decoration: BoxDecoration(
                    color: cor1,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Material(
                    elevation: 0.5,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    type: MaterialType.canvas,
                    child: Image(
                      image: AssetImage(img1),
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
                  decoration: BoxDecoration(
                    color: cor1,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Material(
                    elevation: 0.5,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    type: MaterialType.card,
                    child: Image(
                      image: AssetImage(img1),
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
                  decoration: BoxDecoration(
                    color: cor1,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Material(
                    elevation: 0.5,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    type: MaterialType.transparency,
                    child: Image(
                      image: AssetImage(img1),
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
                  decoration: BoxDecoration(
                    color: cor1,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Material(
                    elevation: 0.5,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    //type: MaterialType.transparency,
                    child: Image(
                      image: AssetImage(img1),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container WidgetName(String name) {
    return Container(
      color: bGroundColor,
      height: 22,
      padding: EdgeInsets.only(left: 30),
      width: double.infinity,
      child: Text(
        name,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: cor2,
        ),
      ),
    );
  }

  Container imageBuilder(String image) {
    return Container(
      height: 300,
      width: MediaQuery.of(context).size.width,
      //padding: EdgeInsets.only(left: 0, right: 0),
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(5),
        color: corfundo,
      ),
      child: Container(
        height: 300,
        width: double.maxFinite,
        padding: EdgeInsets.only(top: 10, bottom: 10),
        decoration: BoxDecoration(
          //borderRadius: BorderRadius.circular(5),
          color: bGroundColor,
        ),
        child: Material(
          // borderRadius: BorderRadius.circular(5),
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

  Drawer buildDrawer(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
                Container(
                  color: cor1,
                  height: 130,
                  width: double.infinity,
                  padding: EdgeInsets.only(
                    top: 80,
                    left: 30,
                  ),
                  child: Text(
                    "Olá Yure",
                    style: titulo1,
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
      color: cor1,
      height: indexH, //sempre + 120
      thickness: 1,
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
      decoration: BoxDecoration(color: corfundo),
      child: SizedBox.expand(
        child: FlatButton(
          color: corfundo,
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
