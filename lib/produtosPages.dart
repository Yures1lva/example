import 'package:exampleflutter/constants.dart';
import 'package:exampleflutter/estruturas.dart';
import 'package:exampleflutter/homePage.dart';
import 'package:flutter/material.dart';

class ProdutosPages extends StatelessWidget {
  final Empresalist empresalista;
  List imgLista = [
    listadeProdutos[0].image,
    listadeProdutos[1].image,
    listadeProdutos[2].image,
    listadeProdutos[3].image,
    listadeProdutos[5].image,
  ];

  ProdutosPages({this.empresalista});
  int _current;
  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      backgroundColor: backgrounColor,
      appBar: buildAppBar(
          context,
          empresalista.name,
          Icon(
            Icons.shopping_cart_outlined,
            color: iconColor,
          )),
      body: Container(
        padding: paddingPadrao,
        child: SingleChildScrollView(
          child: Column(
            children: [
              search_box(
                "Buscar Produtos",
                BoxDecoration(
                  color: backgrounColor2,
                  borderRadius: BorderRadius.circular(bordas),
                ),
              ),
              WidgetName("Para você"),
              Containerdesiner1(
                listadeProdutos[3].image,
                listadeProdutos[3].nome,
                listadeProdutos[3].descricao,
                listadeProdutos[3].loja,
                listadeProdutos[3].preco1,
                listadeProdutos[3].preco2,
                listadeProdutos[4].image,
                listadeProdutos[4].nome,
                listadeProdutos[4].descricao,
                listadeProdutos[4].loja,
                listadeProdutos[4].preco1,
                listadeProdutos[4].preco2,
                listadeProdutos[1].image,
                listadeProdutos[1].nome,
                listadeProdutos[1].descricao,
                listadeProdutos[1].loja,
                listadeProdutos[1].preco1,
                listadeProdutos[1].preco2,
              ),
              Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.only(right: 10, top: 4, bottom: 8),
                height: 5,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: backgrounColor2,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(bordas),
                    bottomLeft: Radius.circular(bordas),
                  ),
                ),
              ),
              Divider(
                height: 10,
                color: Colors.transparent,
              ),
              WidgetName("Promoções"),
              carouselWidget(imgLista, index, _current),
              Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.only(right: 10, top: 4, bottom: 8),
                height: 30,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: backgrounColor2,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(bordas),
                    bottomLeft: Radius.circular(bordas),
                  ),
                ),
              ),
              Divider(
                height: 10,
                color: Colors.transparent,
              ),
              WidgetName("Categoria 1"),
              Container(
                decoration: BoxDecoration(
                  color: backgrounColor2,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(bordas),
                    bottomLeft: Radius.circular(bordas),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: backgrounColor2,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(bordas),
                          bottomLeft: Radius.circular(bordas),
                        ),
                      ),
                      height: 160,
                      padding: EdgeInsets.all(10),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          cardProduct(),
                          cardProduct(),
                          cardProduct(),
                          cardProduct(),
                          cardProduct(),
                          cardProduct(),
                          cardProduct(),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: backgrounColor2,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(bordas),
                          bottomLeft: Radius.circular(bordas),
                        ),
                      ),
                      height: 160,
                      padding: EdgeInsets.all(10),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          cardProduct(),
                          cardProduct(),
                          cardProduct(),
                          cardProduct(),
                          cardProduct(),
                          cardProduct(),
                          cardProduct(),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: backgrounColor2,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(bordas),
                          bottomLeft: Radius.circular(bordas),
                        ),
                      ),
                      height: 160,
                      padding: EdgeInsets.all(10),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          cardProduct(),
                          cardProduct(),
                          cardProduct(),
                          cardProduct(),
                          cardProduct(),
                          cardProduct(),
                          cardProduct(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 10,
                color: Colors.transparent,
              ),
            ],
          ),
        ),
      ),
    );
  }

  InkWell cardProduct() {
    return InkWell(
      child: Container(
        height: double.infinity,
        width: 140,
        padding: EdgeInsets.all(1),
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: backgrounColor2,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Material(
          elevation: 0.5,
          color: Colors.white,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          type: MaterialType.button,
          child: Image(
            image: AssetImage("images/productnike2.png"),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}

List<Widget> funContainer() {}
