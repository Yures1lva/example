import 'package:exampleflutter/FavoritePage.dart';
import 'package:exampleflutter/configPage.dart';
import 'package:exampleflutter/loginPage.dart';
import 'package:exampleflutter/perfilPage.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'homePage.dart';
import 'package:carousel_slider/carousel_slider.dart';

double bordas = 5;

//paleta de cores.......................
const backgrounColor = Color(0xffe0e0e0);
const backgrounColor2 = Colors.white;
const backgrounColor3 = Colors.white10;
const primaryColor = Color(0xff0a8754);
const secondaryColor = Color(0xff508ca4);
const cor4 = Color(0xffbfd7ea);
const buttonColor = primaryColor;
const iconColor = Colors.white;
const paddingPadrao = EdgeInsets.only(left: 10, right: 10),

//esquema de escrita...................
    titulo1 = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    );

const titulo2 = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w600,
  color: Colors.black,
);

const tituloPrimaryColor = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w600,
  color: primaryColor,
);

const subtitulo = TextStyle(
  fontWeight: FontWeight.w600,
  color: Colors.black,
  fontSize: 15,
);

const subtituloPrimaryColor = TextStyle(
  fontWeight: FontWeight.w600,
  color: primaryColor,
  fontSize: 15,
);

const textonormal = TextStyle(
  fontWeight: FontWeight.w500,
  color: Colors.white,
  fontSize: 12,
);

const textonormalPrimaryColor = TextStyle(
  fontWeight: FontWeight.w500,
  color: primaryColor,
  fontSize: 12,
);

const textonormal2 = TextStyle(
  fontWeight: FontWeight.w400,
  color: Colors.black,
  fontSize: 12,
);

//elevção de um Container.................................
const elevation = BoxShadow(
  offset: Offset(1, 3),
  blurRadius: 1,
  color: Colors.black12, // Black color with 12% opacity
);

//alocação dos widgets
const double symetricPad = 30;

//icones das estrelas............

const starStyle1 = Padding(padding: EdgeInsets.all(0.0), child: starIcon1);
const starStyle2 = Padding(padding: EdgeInsets.all(0.0), child: starIcon2);
const starStyle3 = Padding(padding: EdgeInsets.all(0.0), child: starIcon3);

const double star = 15;
const starIcon1 = Icon(
  Icons.star,
  size: star,
  color: iconColor,
);
const starIcon2 = Icon(
  Icons.star_half,
  size: star,
  color: iconColor,
);
const starIcon3 = Icon(
  Icons.star_border_purple500_sharp,
  size: star,
  color: iconColor,
);

//widget de busca..........................................................
final ValueChanged onChanged = (value) {};

// ignore: non_constant_identifier_names
Container search_box(String hintText, BoxDecoration decoracao) => Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      padding: EdgeInsets.symmetric(
        horizontal: symetricPad,
        vertical: 2,
      ),
      decoration: decoracao,
      child: TextField(
        onChanged: onChanged,
        style: TextStyle(color: primaryColor),
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          icon: Icon(
            Icons.search,
            color: primaryColor,
          ),
          hintText: hintText,
          hintStyle: textonormalPrimaryColor,
        ),
      ),
    );

Container butaoPadroa(BuildContext context, String name, Color corBotao,
    Color cornome, Icon iconButton, Function pressione) {
  return Container(
    margin: EdgeInsets.only(bottom: 5, top: 5),
    height: 50,
    alignment: Alignment.centerLeft,
    decoration: BoxDecoration(
      color: corBotao,
      borderRadius: BorderRadius.all(
        Radius.circular(bordas),
      ),
    ),
    child: FlatButton(
      height: 50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(bordas),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          iconButton,
          Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: cornome,
              fontSize: 15,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
      onPressed: pressione,
    ),
  );
}

Drawer BuildDrawer(BuildContext context, Color cortheme) {
  _launchURL() async {
    const url = "https://flutter.dev";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  return Drawer(
    child: SingleChildScrollView(
      child: Container(
        //height: 700,
        color: backgrounColor,
        child: Column(
          children: <Widget>[
            Container(
              color: cortheme,
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
                  Divider(
                    height: 5,
                    color: Colors.transparent,
                  ),
                  butaoPadroa(
                    context,
                    "Início",
                    backgrounColor2,
                    cortheme,
                    Icon(
                      Icons.home,
                      color: cortheme,
                    ),
                    () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                  ),
                  butaoPadroa(
                    context,
                    "Pedidos",
                    backgrounColor2,
                    cortheme,
                    Icon(
                      Icons.delivery_dining,
                      color: cortheme,
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
                    cortheme,
                    Icon(
                      Icons.person,
                      color: cortheme,
                    ),
                    () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PerfilPage()));
                    },
                  ),
                  butaoPadroa(
                    context,
                    "Favoritos",
                    backgrounColor2,
                    cortheme,
                    Icon(
                      Icons.favorite,
                      color: cortheme,
                    ),
                    () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FavoritePage()));
                    },
                  ),
                  butaoPadroa(
                    context,
                    "Mais vendidos",
                    backgrounColor2,
                    cortheme,
                    Icon(
                      Icons.bar_chart,
                      color: cortheme,
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
                    cortheme,
                    Icon(
                      Icons.shopping_bag,
                      color: cortheme,
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
                    cortheme,
                    Icon(
                      Icons.settings,
                      color: cortheme,
                    ),
                    () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ConfigPage()));
                    },
                  ),
                  butaoPadroa(
                    context,
                    "Sair",
                    backgrounColor2,
                    cortheme,
                    Icon(
                      Icons.close,
                      color: cortheme,
                    ),
                    () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                  ),
                  Divider(
                    height: 400,
                    color: Colors.transparent,
                  ),
                ],
              ),
            ),
            // Divider(
            //   color: cor1,
            //   height: 0,
            //   thickness: 1,
            //   indent: 20,
            //   endIndent: 20,
            // )

            Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              width: double.maxFinite,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "SNST software",
                      style: TextStyle(color: cortheme),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      if (await canLaunch("url")) {
                        await launch("url");
                      }
                    },
                    child: Row(
                      children: <Widget>[
                        Text(
                          "visite nosso website",
                          style: TextStyle(color: cortheme),
                        ),
                        Icon(
                          Icons.public_outlined,
                          color: cortheme,
                          size: 15,
                        ),
                      ],
                    ),
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

//card padrão de empresas
Container CardEmpresa(
    String image, String descricao, double avaliacao, Function press) {
  return Container(
    height: 90,
    margin: EdgeInsets.symmetric(vertical: 5),
    width: double.maxFinite,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
    ),
    child: Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        Container(
          child: InkWell(
            onTap: press, //press,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 10, top: 10),
                      margin: EdgeInsets.only(left: 10, right: 10),
                      height: 100,
                      width: 100,
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
                    SizedBox(
                      height: 70,
                      width: 150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 12),
                            child: Text(descricao, style: textonormal2),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                //posição da descrição.........................................

                //posição da avaliação.........................................
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 20,
                    width: 90,
                    padding: EdgeInsets.symmetric(horizontal: 7, vertical: 2.5
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
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );
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

AppBar buildAppBar(BuildContext context, String nm, Icon ic) {
  return AppBar(
    elevation: 0,
    leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: iconColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        }),
    centerTitle: true,
    title: Text(
      nm,
      style: titulo1,
    ),
    actions: <Widget>[IconButton(icon: ic, onPressed: null)],
  );
}

class CarouselPage extends StatefulWidget {
  @override
  _CarouselPageState createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

//container de produtos
Container styleContainer(String image, String nomedoP, String descricao,
    String loja, String preco1, String preco2) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 3),
    height: 150,
    width: double.maxFinite,
    decoration: BoxDecoration(
      color: backgrounColor2,
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
            elevation: 1.0,
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
                  width: 150,
                  child: Text(
                    nomedoP,
                    style: tituloPrimaryColor,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 38,
                child: Container(
                  alignment: Alignment.centerLeft,
                  //height: 50,
                  width: 150,
                  margin: EdgeInsets.all(0),
                  child: Text(
                    descricao,
                    style: textonormal2,
                  ),
                ),
              ),
              Positioned(
                bottom: 30,
                left: 0,
                child: Text(
                  loja,
                  style: subtitulo,
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
                      style: titulo2,
                    ),
                    VerticalDivider(
                      width: 5,
                      color: Colors.transparent,
                    ),
                    Text(
                      preco1,
                      style: titulo2,
                    ),
                    Text(
                      "," + preco2,
                      style: subtitulo,
                    ),
                    Text(
                      "ou 3x cartão",
                      textAlign: TextAlign.end,
                      style: textonormal2,
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

class Carrousel extends StatefulWidget {
  @override
  _CarrouselState createState() => _CarrouselState();
}

class _CarrouselState extends State<Carrousel> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

//carouselWidget
Container carouselWidget(List listadeimagens, var ind, int count) {
  return Container(
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
        onPageChanged: (ind, reason) {},
      ),
      items: listadeimagens.map((imgUrl) {
        return Builder(
          builder: (BuildContext context) {
            return Column(children: <Widget>[
              Container(
                  height: 290,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: backgrounColor2,
                  ),
                  child: Column(
                    children: <Widget>[
                      cardProduct(imgUrl, 280),

                      // Container(
                      //   margin: EdgeInsets.symmetric(horizontal: 2),
                      //   height: 40,
                      //   alignment: Alignment.bottomRight,
                      //   width: double.infinity,
                      //   decoration: BoxDecoration(
                      //     color: backgrounColor,
                      //     borderRadius: BorderRadius.only(
                      //       bottomRight: Radius.circular(bordas),
                      //       bottomLeft: Radius.circular(bordas),
                      //     ),
                      //   ),
                      //   child: Stack(
                      //     children: <Widget>[
                      //       Positioned(
                      //           top: 2,
                      //           left: 2,
                      //           child: Container(
                      //             width: 50,
                      //             child: Text(
                      //               "Arroz",
                      //               style: subtitulo,
                      //             ),
                      //           ))
                      //     ],
                      //   ),
                      // ),
                    ],
                  )),
            ]);
          },
        );
      }).toList(),
    ),
  );
}

InkWell cardProduct(
  String image,
  double width,
) {
  const double height2 = 30;
  return InkWell(
    child: Column(
      children: <Widget>[
        Container(
          width: width,
          height: width - height2,
          padding: EdgeInsets.symmetric(horizontal: 2),
          // margin: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Material(
            elevation: 0.5,
            color: Colors.transparent,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            type: MaterialType.button,
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.symmetric(horizontal: 2),
            padding: EdgeInsets.only(left: 2),
            decoration: BoxDecoration(
                color: backgrounColor2,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(bordas),
                  bottomRight: Radius.circular(bordas),
                )),
            height: height2,
            width: width - 4,
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 0,
                  left: 0,
                  child: Text(
                    "nike pica dos pica ",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: primaryColor,
                      fontSize: 15,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Text(
                    "Price: RS 10 ",
                    style: textonormal2,
                  ),
                )
              ],
            ))
      ],
    ),
  );
}
// Container(
//       width: width,
//       height: width,
//       padding: EdgeInsets.symmetric(horizontal: 2),
//       // margin: EdgeInsets.symmetric(horizontal: 5),
//       decoration: BoxDecoration(
//         color: Colors.transparent,
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Material(
//         elevation: 0.5,
//         color: Colors.transparent,
//         clipBehavior: Clip.antiAliasWithSaveLayer,
//         type: MaterialType.button,
//         child: Image(
//           image: AssetImage(image),
//           fit: BoxFit.fill,
//         ),
//       ),
//     )
