class Empresalist {
  final int id;
  final String name, description, image;
  final double avaliacao;
  final String categoriaempresa;

  Empresalist({
    this.id,
    this.name,
    this.description,
    this.image,
    this.avaliacao,
    this.categoriaempresa,
  });
}

final List<Empresalist> empresalist = [
  Empresalist(
    id: 3,
    name: "Atacadão",
    image: 'images/atacadaoicon.png',
    description: "Temos grandes ofertas e encartes da loja Atacadão",
    avaliacao: 3,
    categoriaempresa: "supermercado",
  ),
  Empresalist(
    id: 5,
    name: "Havan",
    image: "images/havanicon.png",
    description: "Ofertas imperdíveis. Tudo pra você, sua família e sua casa",
    avaliacao: 2,
    categoriaempresa: "supermercado",
  ),
  Empresalist(
    id: 6,
    name: "Centauro",
    image: "images/centauroicon.png",
    description: "Aparelhos de academia e material esportivo",
    avaliacao: 5,
    categoriaempresa: "esporte",
  ),
  Empresalist(
    id: 7,
    name: "Cia Paulista",
    image: "images/ciapicon.jpg",
    description: "A marca Cia Paulista de Pizza, existe desde 1986 ",
    avaliacao: 4,
    categoriaempresa: "comida",
  ),
  Empresalist(
    id: 4,
    name: "Magazan",
    image: 'images/magazanicon.jpg',
    description: "O Magazan conta com varias lojas espelhadas pela região Pará",
    avaliacao: 2,
    categoriaempresa: "supermercado",
  ),
  Empresalist(
    id: 2,
    name: "Mix Mateus",
    image: 'images/mixicon.jpg',
    description: "O melhor e mais variado atacadão e varejo da região. ",
    avaliacao: 3,
    categoriaempresa: "supermercado",
  ),
  Empresalist(
    id: 1,
    name: "Nike",
    image: 'images/nikeicon.png',
    description: "O melhor para seu esporte",
    avaliacao: 5,
    categoriaempresa: "esporte e moda",
  ),
  Empresalist(
    id: 7,
    name: "Royal Sport Bar",
    image: "images/royalicon.png",
    description: "Ambiente diferenciado, lazer, drinks únicos",
    avaliacao: 4,
    categoriaempresa: "bar",
  ),
];
