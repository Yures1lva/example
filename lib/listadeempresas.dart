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
        centerTitle: false,
        title: Text(
          'Empresas',
          style: titulo1,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.apartment,
              color: iconColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
//barra de pesquisa.....................................................................................
          SeachWidget(
            onChanged: (value) {},
          ),
//lista de na vertical.......................................................................................
          /* Container(
            margin: EdgeInsets.symmetric(vertical: symetricPad / 2),
            height: 35,
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
                            left: 20.0,
                            right: index == categoria.length - 1
                                ? symetricPad
                                : 0),
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
*/
          Divider(
            height: 20,
            color: Colors.transparent,
          ),
//desgn do body...............................................................................
          Expanded(
              child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 70),
                decoration: BoxDecoration(
                    color: backgrounColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(22),
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
          ))
        ],
      ),
    );
  }
}

class SeachWidget extends StatelessWidget {
  const SeachWidget({
    Key key,
    this.onChanged,
  }) : super(key: key);

  final ValueChanged onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.symmetric(
        horizontal: symetricPad,
        vertical: 2,
      ),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.4),
          borderRadius: BorderRadius.circular(5)),
      child: TextField(
        decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            icon: Icon(
              Icons.search,
              color: iconColor,
            ),
            hintText: "Pesquisar Empresa",
            hintStyle: subtitulo),
      ),
    );
  }
}
