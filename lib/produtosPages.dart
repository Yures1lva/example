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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: backgrounColor2,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
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
                        image: AssetImage(empresalista.image),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: 250,
                    child: Text(
                      empresalista.description,
                      style: tituloPrimaryColor,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: paddingPadrao,
              child: Column(
                children: <Widget>[
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
                  Container(
                    padding: EdgeInsets.only(left: 10, top: 7, bottom: 0),
                    height: 10,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: backgrounColor2,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(bordas),
                        topLeft: Radius.circular(bordas),
                      ),
                    ),
                  ),
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
                  widgetCategoria(),
                  Divider(
                    height: 10,
                    color: Colors.transparent,
                  ),
                  WidgetName("Categoria 2"),
                  widgetCategoria(),
                  Divider(
                    height: 10,
                    color: Colors.transparent,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column widgetCategoria() {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 5),
          decoration: BoxDecoration(
            color: backgrounColor,
          ),
          height: 160,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              cardProduct(listadeProdutos[1].image, 140),
              cardProduct(listadeProdutos[1].image, 140),
              cardProduct(listadeProdutos[1].image, 140),
              cardProduct(listadeProdutos[1].image, 140),
              cardProduct(listadeProdutos[1].image, 140),
              cardProduct(listadeProdutos[1].image, 140),
              cardProduct(listadeProdutos[1].image, 140),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: backgrounColor,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(bordas),
              bottomLeft: Radius.circular(bordas),
            ),
          ),
          height: 160,
          padding: EdgeInsets.only(bottom: 5),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              cardProduct(listadeProdutos[1].image, 140),
              cardProduct(listadeProdutos[1].image, 140),
              cardProduct(listadeProdutos[1].image, 140),
              cardProduct(listadeProdutos[1].image, 140),
              cardProduct(listadeProdutos[1].image, 140),
              cardProduct(listadeProdutos[1].image, 140),
              cardProduct(listadeProdutos[1].image, 140),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: backgrounColor,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(bordas),
              bottomLeft: Radius.circular(bordas),
            ),
          ),
          height: 160,
          padding: EdgeInsets.only(bottom: 5),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              cardProduct(listadeProdutos[1].image, 140),
              cardProduct(listadeProdutos[1].image, 140),
              cardProduct(listadeProdutos[1].image, 140),
              cardProduct(listadeProdutos[1].image, 140),
              cardProduct(listadeProdutos[1].image, 140),
              cardProduct(listadeProdutos[1].image, 140),
              cardProduct(listadeProdutos[1].image, 140),
            ],
          ),
        ),
      ],
    );
  }
}

List<Widget> funContainer() {}
