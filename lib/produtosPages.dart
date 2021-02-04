import 'package:exampleflutter/constants.dart';
import 'package:exampleflutter/estruturas.dart';
import 'package:flutter/material.dart';

class _ProdutosPagesState extends StatelessWidget {
  final Empresalist empresalistas;

  _ProdutosPagesState(this.empresalistas);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          context,
          empresalistas.name,
          Icon(
            Icons.shopping_cart_outlined,
            color: iconColor,
          )),
      body: SingleChildScrollView(
        child: Column(),
      ),
    );
  }
}
