import 'package:flutter/material.dart';

double bordas = 5;

//paleta de cores.......................
const backgrounColor = Colors.white;
const primaryColor = Color(0xff0a8754);
const secondaryColor = Color(0xff91aec1);
const buttonColor = primaryColor;
const iconColor = Colors.white,

//esquema de escrita...................
    titulo1 = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    );

const titulo2 = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w400,
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
  fontWeight: FontWeight.w500,
  color: Colors.white,
  fontSize: 15,
);

const textButton = TextStyle(
  fontWeight: FontWeight.bold,
  color: iconColor,
  fontSize: 15,
);

//elevção de um Container.................................
const elevation = BoxShadow(
  offset: Offset(0, 15),
  blurRadius: 27,
  color: Colors.black12, // Black color with 12% opacity
);

//alocação dos widgets
const double symetricPad = 20;

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

Container search_box(String hintText, BoxDecoration decoracao) {
  return Container(
    margin: EdgeInsets.all(20.0),
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
        hintStyle: textonormal2,
      ),
    ),
  );
}
