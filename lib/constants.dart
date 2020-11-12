import 'package:flutter/material.dart';

double bordas = 5;

//paleta de cores.......................
const backgrounColor = Color(0xffe0e0e0);
const primaryColor = Color(0xff508ca4);
const secondaryColor = Color(0xff0a8754);
const cor4 = Color(0xffbfd7ea);
const buttonColor = primaryColor;
const backgrounColor2 = Colors.white54;
const iconColor = Colors.white;
const paddingPadrao = EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),

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
  fontSize: 15,
);

const textonormal2 = TextStyle(
  fontWeight: FontWeight.w400,
  color: Colors.black,
  fontSize: 15,
);

//elevção de um Container.................................
const elevation = BoxShadow(
  offset: Offset(0, 15),
  blurRadius: 27,
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
    margin: EdgeInsets.only(bottom: 10, top: 10),
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
