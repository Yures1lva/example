import 'package:exampleflutter/FavoritePage.dart';
import 'package:exampleflutter/configPage.dart';
import 'package:exampleflutter/loginPage.dart';
import 'package:exampleflutter/perfilPage.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'homePage.dart';

double bordas = 5;

//paleta de cores.......................
const backgrounColor = Color(0xffe0e0e0);
const primaryColor = Color(0xff508ca4);
const secondaryColor = Color(0xff0a8754);
const cor4 = Color(0xffbfd7ea);
const buttonColor = primaryColor;
const backgrounColor2 = Colors.white54;
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

const subtitulo = TextStyle(
  fontWeight: FontWeight.w600,
  color: Colors.black,
  fontSize: 15,
);

const textonormal = TextStyle(
  fontWeight: FontWeight.w500,
  color: Colors.white,
  fontSize: 12,
);

const textonormal2 = TextStyle(
  fontWeight: FontWeight.w400,
  color: Colors.black,
  fontSize: 12,
);

//elevção de um Container.................................
const elevation = BoxShadow(
  offset: Offset(10, 5),
  blurRadius: 57,
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
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          icon: Icon(
            Icons.search,
            color: iconColor,
          ),
          hintText: hintText,
          hintStyle: textonormal,
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
                      width: 120,
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
