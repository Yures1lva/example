import 'package:exampleflutter/constants.dart';
import 'package:exampleflutter/estruturas.dart';
import 'package:exampleflutter/homePage.dart';
import 'package:flutter/material.dart';

class ProdutosPages extends StatelessWidget {
  final Empresalist empresalista;

  ProdutosPages({this.empresalista});

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
                "buscar produtos",
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
              )
            ],
          ),
        ),
      ),
    );
  }
}

List<Widget> funContainer() {}
