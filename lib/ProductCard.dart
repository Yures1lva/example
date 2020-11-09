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
      margin: EdgeInsets.symmetric(horizontal: 1, vertical: symetricPad / 2),
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            color: Colors.transparent,
            margin: EdgeInsets.symmetric(
                horizontal: symetricPad, vertical: symetricPad / 2),
            height: 150,
            child: InkWell(
              onTap: press,
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 136,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: secondaryColor),
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [elevation],
                          borderRadius: BorderRadius.circular(16)),
                    ),
                  ),
                  Positioned(
                    left: 18,
                    bottom: 15,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: symetricPad,
                      ),
                      height: 100,
                      width: 140,
                      child: Material(
                        elevation: 0.5,
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
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
                        height: 150,
                        width: size.width - 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: symetricPad, vertical: 42),
                              child: Text(
                                product.description,
                                style: subtitulo,
                              ),
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
                                      bottomRight: Radius.circular(20),
                                      topLeft: Radius.circular(26))),
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
