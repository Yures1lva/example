import 'package:exampleflutter/PageEmpresas.dart';
import 'package:exampleflutter/empresalist.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:exampleflutter/constants.dart';
import 'package:exampleflutter/ProductCard.dart';

class Listadeempresas extends StatefulWidget {
  @override
  _ListadeempresasState createState() => _ListadeempresasState();
}

class _ListadeempresasState extends State<Listadeempresas> {
  int selectedIndex = 0;
  List categoria = ["Esportes", "Mercado", "Bar", "restaurante"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
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
          },
        ),
        centerTitle: false,
        title: Text(
          "Empresa",
          style: titulo1,
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.apartment,
                color: iconColor,
              ),
              onPressed: null)
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: paddingPadrao,
            child: search_box(
              "Buscar Empresa ou Produto",
              BoxDecoration(
                color: secondaryColor, //.withOpacity(0.4),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
//lista de na vertical.......................................................................................
          Container(
            padding: paddingPadrao,
            height: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(bordas),
            ),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categoria.length,
                itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        alignment: Alignment
                            .center, //alinhando os widgets presentes no container
                        margin: EdgeInsets.only(
                          right: 10.0,
                          // right: index == categoria.length ? symetricPad : 0
                        ),
                        padding: EdgeInsets.symmetric(horizontal: symetricPad),
                        decoration: BoxDecoration(
                            color: index == selectedIndex
                                ? secondaryColor
                                : Colors.white.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          categoria[index],
                          style: textonormal,
                        ),
                      ),
                    )),
          ),

          Divider(
            height: 20,
            color: Colors.transparent,
          ),
//desIgn do body...............................................................................
          Expanded(
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                      color: backgrounColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      )),
                ),
                ListView.builder(
                  itemCount: empresalist.length,
                  itemBuilder: (context, index) => ProductCard(
                    itemIndex: index,
                    product: empresalist[index],
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PageEmpresas()));
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
