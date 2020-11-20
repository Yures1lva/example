import 'package:exampleflutter/constants.dart';
import 'package:flutter/material.dart';

class PageEmpresas extends StatefulWidget {
  @override
  _PageEmpresasState createState() => _PageEmpresasState();
}

class _PageEmpresasState extends State<PageEmpresas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgrounColor,
      appBar: buildAppBar(
        context,
        "Produtos",
        Icon(
          Icons.shopping_bag_outlined,
          color: iconColor,
        ),
      ),
    );
  }
}
