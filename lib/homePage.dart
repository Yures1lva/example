import 'package:exampleflutter/listadeempresas.dart';
import 'package:flutter/material.dart';
import 'package:exampleflutter/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

//tema padrão da pag
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
      backgroundColor: backgrounColor,
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
                color: cor2, //.withOpacity(0.4),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            carouselSlider = CarouselSlider(
              options: CarouselOptions(
                height: 330.0,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 1500),
                autoPlayCurve: Curves.easeInOut, //Curves.easeOutQuad,
                enlargeCenterPage: true,
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
                      Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 1,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: imageBuilder(imgUrl)),
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
                  margin: EdgeInsets.symmetric(horizontal: 3.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index ? cor1 : cor2,
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }

  Container imageBuilder(String image) {
    return Container(
      height: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: cor2,
      ),
      child: Container(
        margin: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 20,
          bottom: 3,
        ),
        padding: EdgeInsets.symmetric(horizontal: symetricPad),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
              bottomLeft: Radius.circular(2.5),
              bottomRight: Radius.circular(2.5),
            ),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
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
