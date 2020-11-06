import 'package:flutter/material.dart';
import 'package:exampleflutter/constants.dart';
import 'package:flutter/cupertino.dart';

class Empresalist {
  final int id;
  final String name, description, image;

  Empresalist({
    this.id,
    this.name,
    this.description,
    this.image,
  });
}

final List<Empresalist> empresalist = [
  Empresalist(
    id: 3,
    name: "Atacadão",
    image: 'images/atacadaoicon.png',
    description: "Temos grandes ofertas e encartes da loja Atacadão em Marabá,",
  ),
  Empresalist(
      id: 5,
      name: "Avan",
      image: "images/avanicon.png",
      description:
          "Ofertas imperdíveis. Tudo pra você, sua família e sua casa"),
  Empresalist(
      id: 6,
      name: "Centauro",
      image: "images/centauroicon.png",
      description: "Aparelhos de academia e material esportivo"),
  Empresalist(
      id: 7,
      name: "Cia Paulista",
      image: "images/ciapicon.jpg",
      description: "A marca Cia Paulista de Pizza, existe desde 1986 "),
  Empresalist(
    id: 4,
    name: "Magazan",
    image: 'images/magazanicon.jpg',
    description: "O Magazan conta com varias lojas espelhadas pela região Pará",
  ),
  Empresalist(
    id: 2,
    name: "Mix Mateus",
    image: 'images/mixicon.jpg',
    description: "O melhor e mais variado atacadão e varejo da região. ",
  ),
  Empresalist(
    id: 1,
    name: "Nike",
    image: 'images/nikeicon.png',
    description: "O melhor para seu esporte",
  ),
  Empresalist(
      id: 7,
      name: "Royal Sport Bar",
      image: "images/royalicon.png",
      description: "Ambiente diferenciado, lazer, drinks únicos"),
];
