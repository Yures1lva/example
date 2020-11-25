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
    description: "O melhor da moda para você e seu esporte",
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

class ListadeProdutos {
  final String image;
  final String nome;
  final String categoria;
  final String descricao;
  final String loja;
  final String preco1;
  final String preco2;
  ListadeProdutos(
      {this.image,
      this.nome,
      this.categoria,
      this.descricao,
      this.loja,
      this.preco1,
      this.preco2});
}

final List<ListadeProdutos> listadeProdutos = [
  ListadeProdutos(
    image: "images/promonike1.png",
    nome: "Camisa da seleção ",
    categoria: "Roupas",
    descricao: "camisa da seleção confortável da nike pai vey",
    loja: "Nike",
    preco1: "220",
    preco2: "99",
  ),
  ListadeProdutos(
    image: "images/promonike2.png",
    nome: "chuteira nike confrotável",
    categoria: "calçados",
    descricao:
        "chutreira pica confortável da nike pai vey, pra tirar onda surfista",
    loja: "Nike",
    preco1: "150",
    preco2: "99",
  ),
  ListadeProdutos(
    image: "images/promonike3.png",
    nome: "Tenis adidas mlk",
    categoria: "calçados",
    descricao: "Sapato confortável da adidas ma com o simbolo da nike pai vey",
    loja: "Nike",
    preco1: "550",
    preco2: "99",
  ),
  ListadeProdutos(
    image: "images/promohavan1.png",
    nome: "funcking arvore de natal",
    categoria: "Natal",
    descricao: "Arvore com o intuito de enfiar no cu de quem ta lendo",
    loja: "Havan",
    preco1: "20",
    preco2: "99",
  ),
  ListadeProdutos(
    image: "images/promohavan2.png",
    nome: "funcking macroondas",
    categoria: "Cozinha",
    descricao: "Macroondas que bate na mãe",
    loja: "Havan",
    preco1: "20",
    preco2: "99",
  ),
  ListadeProdutos(
    image: "images/productnike1.png",
    nome: "Tenis masculino",
    categoria: "Esporte",
    descricao: "Tenis Nike masculino para a prática de exercício",
    loja: "Nnike",
    preco1: "200",
    preco2: "99",
  ),
];
