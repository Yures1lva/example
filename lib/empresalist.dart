class Empresalist {
  final int id;
  final String name, description, image;

  Empresalist({this.id, this.name, this.description, this.image});
}

List<Empresalist> products = [
  Empresalist(
    id: 1,
    name: "NIke",
    image: "assets/images/nikeicon.png",
    description: "O melhor para seu esporte",
  ),
  Empresalist(
    id: 2,
    name: "Mix Mateus",
    image: "assets/images/mixicon.jpg",
    description: "O melhor e mais variado atacadão e varejo da região. ",
  ),
  Empresalist(
    id: 1,
    name: "Atacadão ",
    image: "assets/images/atacadaoicon.png",
    description: "Temos grandes ofertas e encartes da loja Atacadão em Marabá",
  ),
];
