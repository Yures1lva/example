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
      appBar: buildAppBar(context),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: IconButton(
          padding: EdgeInsets.only(
            left: 20,
          ),
          icon: Icon(
            Icons.arrow_back_rounded,
            color: iconColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          }),
      centerTitle: false,
      title: Text(
        "Voltar".toUpperCase(),
        style: subtitulo,
      ),
      actions: <Widget>[
        IconButton(
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: iconColor,
            ),
            onPressed: null)
      ],
    );
  }
}
