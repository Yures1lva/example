import 'package:exampleflutter/empresalist.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:exampleflutter/constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    this.itemIndex,
    this.product,
    this.press,
  }) : super(key: key);

  final int itemIndex;
  final Empresalist product;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: paddingPadrao,
      height: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            child: InkWell(
              onTap: press,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: secondaryColor),
                    child: Container(
                      margin: EdgeInsets.only(left: 4),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [elevation],
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                  Positioned(
                    left: 15,
                    bottom: 5,
                    child: Container(
                      padding: EdgeInsets.only(bottom: 10, top: 10),
                      height: 100,
                      width: 140,
                      child: Material(
                        elevation: 0.0,
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        //type: MaterialType.transparency,
                        child: Image(
                          image: AssetImage(product.image),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: SizedBox(
                        height: 80,
                        width: size.width - 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 0),
                              child: Text(product.description,
                                  style: textonormal2),
                            ),
                            Spacer(),
                            Container(
                              height: 20,
                              width: 90,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 7, vertical: 2.5
                                  // vertical: symetricPad * 2,
                                  ),
                              decoration: BoxDecoration(
                                  color: secondaryColor,
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(8),
                                      topLeft: Radius.circular(8))),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: StarList(product.avaliacao),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  // ignore: missing_return
  //logica de avalição
  List<Widget> StarList(double estrela) {
    List<Widget> listaDeEstrelas = new List();

    if (estrela == 2) {
      for (var i = 0; i < estrela; i++) {
        listaDeEstrelas.add(starStyle1);
        listaDeEstrelas.add(starStyle1);
        listaDeEstrelas.add(starStyle2);
        listaDeEstrelas.add(starStyle3);
        listaDeEstrelas.add(starStyle3);

        return listaDeEstrelas;
      }
    } else if (estrela == 3) {
      for (var i = 0; i < estrela; i++) {
        listaDeEstrelas.add(starStyle1);
        listaDeEstrelas.add(starStyle1);
        listaDeEstrelas.add(starStyle1);
        listaDeEstrelas.add(starStyle3);
        listaDeEstrelas.add(starStyle3);

        return listaDeEstrelas;
      }
    } else if (estrela == 4) {
      for (var i = 0; i < estrela; i++) {
        listaDeEstrelas.add(starStyle1);
        listaDeEstrelas.add(starStyle1);
        listaDeEstrelas.add(starStyle1);
        listaDeEstrelas.add(starStyle1);
        listaDeEstrelas.add(starStyle3);

        return listaDeEstrelas;
      }
    } else if (estrela == 5) {
      for (var i = 0; i < estrela; i++) {
        listaDeEstrelas.add(starStyle1);
        listaDeEstrelas.add(starStyle1);
        listaDeEstrelas.add(starStyle1);
        listaDeEstrelas.add(starStyle1);
        listaDeEstrelas.add(starStyle1);

        return listaDeEstrelas;
      }
    }
    ;
  }
}
