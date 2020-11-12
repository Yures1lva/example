import 'package:exampleflutter/PageEmpresas.dart';
import 'package:exampleflutter/listadeempresas.dart';
import 'package:flutter/material.dart';
import 'package:exampleflutter/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
//import 'package:url_launcher/url_launcher.dart';
import 'loginPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

// _launchURL() async {
//   const url = 'https://flutter.dev';
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }
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
                    WidgetName("Empresas"),
                    Containerdesiner1(
                      130, //height interno
                      170, //widdh interno
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
                    BottomText(
                      context,
                      "Ver todas as empresas",
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
                    WidgetName("Esportes"),
                    Containerdesiner1(
                      55,
                      170,
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
                    Divider(
                      height: 20,
                      color: Colors.transparent,
                    ),
                    WidgetName("Tecnologia"),
                    Containerdesiner1(
                      55,
                      170,
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
                    Divider(
                      height: 20,
                      color: Colors.transparent,
                    ),
                    WidgetName("Cozinha"),
                    Containerdesiner1(
                      55,
                      170,
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
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  InkWell BottomText(BuildContext context, String nome, Function pressione) =>
      InkWell(
        child: Container(
          alignment: Alignment.bottomRight,
          padding: EdgeInsets.only(right: 10, top: 4, bottom: 5),
          height: 27,
          width: double.infinity,
          decoration: BoxDecoration(
            color: backgrounColor2,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(bordas),
              bottomLeft: Radius.circular(bordas),
            ),
          ),
          child: Text(
            nome,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: cor1,
            ),
          ),
        ),
        onTap: pressione,
      );

  Container Containerdesiner1(double hTamanho, double wTamanho, String img1,
      String img2, String img3, String img4, Function press) {
    Color corMaior = backgrounColor2;
    return Container(
      padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 5),
      decoration: BoxDecoration(
        color: corMaior,
        // borderRadius: BorderRadius.only(
        //   bottomLeft: Radius.circular(bordas),
        //   bottomRight: Radius.circular(bordas),
        // ),
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              //imagem com navigator
              InkWell(
                highlightColor: corfundo,
                splashColor: corfundo,
                child: Container(
                  width: wTamanho,
                  height: hTamanho,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: AssetImage(img1),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                onTap: press,
              ),

              InkWell(
                highlightColor: corfundo,
                splashColor: corfundo,
                child: Container(
                  width: wTamanho,
                  height: hTamanho,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: AssetImage(img2),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                onTap: press,
              ),
            ],
          ),
          Divider(height: 10, color: Colors.transparent),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              //imagem com navigator
              InkWell(
                highlightColor: corfundo,
                splashColor: corfundo,
                child: Container(
                  width: wTamanho,
                  height: hTamanho,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: AssetImage(img3),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                onTap: press,
              ),

              InkWell(
                highlightColor: corfundo,
                splashColor: corfundo,
                child: Container(
                  width: wTamanho,
                  height: hTamanho,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: AssetImage(img4),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                onTap: press,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container Containerdesiner2(String imag1, Function tap) {
    Color backGColor = corfundo;
    return Container(
      decoration: BoxDecoration(
        color: backgrounColor2,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(bordas),
          bottomRight: Radius.circular(bordas),
        ),
      ),
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: tap,
            child: Container(
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

  Container WidgetName(String name) {
    return Container(
      padding: EdgeInsets.only(left: 10, top: 4),
      height: 22,
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
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: cor1,
        ),
      ),
    );
  }

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

  Drawer buildDrawer(BuildContext context) {
    return Drawer(
      child: Container(
        color: corfundo,
        child: Column(
          children: <Widget>[
            Container(
              color: cor1,
              height: 130,
              width: double.infinity,
              padding: EdgeInsets.only(
                top: 100,
                left: 30,
              ),
              child: Text(
                "Olá Yure",
                style: titulo1,
              ),
            ),
            Container(
              padding: paddingPadrao,
              child: Column(
                children: <Widget>[
                  butaoPadroa(
                    context,
                    "Início",
                    backgrounColor2,
                    primaryColor,
                    Icon(
                      Icons.home,
                      color: cor1,
                    ),
                    () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                  ),
                  butaoPadroa(
                    context,
                    "Perfil",
                    backgrounColor2,
                    primaryColor,
                    Icon(
                      Icons.person,
                      color: cor1,
                    ),
                    () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                  ),
                  butaoPadroa(
                    context,
                    "Favoritos",
                    backgrounColor2,
                    primaryColor,
                    Icon(
                      Icons.favorite,
                      color: cor1,
                    ),
                    () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                  ),
                  butaoPadroa(
                    context,
                    "Mais vendidos",
                    backgrounColor2,
                    primaryColor,
                    Icon(
                      Icons.bar_chart,
                      color: cor1,
                    ),
                    () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                  ),
                  butaoPadroa(
                    context,
                    "Compras",
                    backgrounColor2,
                    primaryColor,
                    Icon(
                      Icons.shopping_bag,
                      color: cor1,
                    ),
                    () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                  ),
                  butaoPadroa(
                    context,
                    "Configurações",
                    backgrounColor2,
                    primaryColor,
                    Icon(
                      Icons.settings,
                      color: cor1,
                    ),
                    () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                  ),
                  butaoPadroa(
                    context,
                    "Sair",
                    backgrounColor2,
                    primaryColor,
                    Icon(
                      Icons.close,
                      color: cor1,
                    ),
                    () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                  ),
                  Divider(
                    height: 199,
                    color: Colors.transparent,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "SNST software",
                          style: TextStyle(color: cor1),
                        ),
                      ),
                      InkWell(
                        onTap: null,
                        child: Row(
                          children: <Widget>[
                            Text(
                              "visite nosso website",
                              style: TextStyle(color: cor1),
                            ),
                            Icon(
                              Icons.public_outlined,
                              color: cor1,
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
            // Divider(
            //   color: cor1,
            //   height: 0,
            //   thickness: 1,
            //   indent: 20,
            //   endIndent: 20,
            // )
          ],
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
}
