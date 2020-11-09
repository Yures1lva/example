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
const cor1 = primaryColor;
const cor2 = secondaryColor;
const corfundo = backgrounColor;
const Color colorIconDrawn = Colors.white;
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
        child: Column(
          children: <Widget>[
            search_box(
              "Buscar Empresa",
              BoxDecoration(
                color: cor2,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
//..........comço do desing de promções..........................
            Container(
              height: 22,
              margin: EdgeInsets.only(right: 44, left: 44),
              width: double.infinity,
              padding: EdgeInsets.only(left: 0, bottom: 0),
              child: Text(
                "Promoções",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: cor2,
                ),
              ),
            ),
            Divider(
              height: 4,
              color: Colors.transparent,
            ),
            carouselSlider = CarouselSlider(
              options: CarouselOptions(
                height: 300.0,
                enableInfiniteScroll: true,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(imgList, (index, url) {
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.only(left: 3, right: 3, top: 5.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index ? cor1 : cor2,
                  ),
                );
              }),
            ),
//..........fim do desing de promções..........................
            Divider(
              height: 20,
              color: Colors.transparent,
            ),
            WidgetName("Ver Empresas"),
            Containerdesiner1(300, 120, 135),
            WidgetName("Seus Pedidos"),
            Containerdesiner1(80, 20, 130),
            WidgetName("Esportes"),
            Containerdesiner1(150, 55, 130),
            WidgetName("Tecnologia"),
            Containerdesiner1(150, 55, 130),
            WidgetName("Cozinha"),
            Containerdesiner1(150, 55, 130),
            Divider(
              height: 20,
              color: Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }

  Container WidgetName(String name) {
    return Container(
      height: 22,
      margin: EdgeInsets.only(left: 22, bottom: 3),
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

  Container Containerdesiner1(double height, double hTamanho, double wTamanho) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: cor1,
        borderRadius: BorderRadius.circular(5),
      ),
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Container(
        height: 200,
        margin: EdgeInsets.only(top: 3, left: 3, right: 3, bottom: 3),
        decoration: BoxDecoration(
          color: corfundo,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Container(
          height: 30,
          width: double.infinity,
          padding: EdgeInsets.only(
            top: 10,
            left: 27,
            right: 27,
          ),
          decoration: BoxDecoration(
            color: corfundo,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(5),
              topLeft: Radius.circular(5),
            ),
          ),
          child: Column(
            children: childrenWidget(hTamanho, wTamanho),
          ),
        ),
      ),
    );
  }

  List<Widget> childrenWidget(double hTamanho, double wTamanho) {
    return <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: hTamanho,
            width: wTamanho,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          Container(
            height: hTamanho,
            width: wTamanho,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ],
      ),
      Divider(
        height: 15,
        color: Colors.transparent,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: hTamanho,
            width: wTamanho,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          Container(
            height: hTamanho,
            width: wTamanho,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ],
      ),
    ];
  }

  Container imageBuilder(String image) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 290,
      width: 500,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: cor2,
      ),
      child: Container(
        margin: EdgeInsets.only(
          left: 3,
          right: 3,
          top: 3,
          bottom: 3,
        ),
        //padding: EdgeInsets.symmetric(horizontal: symetricPad),
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        child: Material(
          elevation: 2,
          color: Colors.white,
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
