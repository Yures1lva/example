import 'package:flutter/material.dart';

double bordas = 5;

//paleta de cores.......................
const backgrounColor = Colors.white;
const primaryColor = Color(0xff0a8754);
const secondaryColor = Color(0xff91aec1);
const buttonColor = Color(0xff91aec1);
const iconColor = Colors.black,

//esquema de escrita...................
    titulo1 = TextStyle(
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
  color: Colors.black,
  fontSize: 12,
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

/*class Staravaliacao {
  int id = 0;
  final starIcon = Icon(
    Icons.star_border_purple500_sharp,
    size: star,
    color: backgrounColor,
  );

  Staravaliacao({
    this.id,
  });
  void arroz() {
    if (id == 1) {
      return starIcon;
    }
  }

  List<Staravaliacao> staravaliacao = [
    Staravaliacao(
      id: 1,
    )
  ];
}*/
