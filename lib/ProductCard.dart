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
      margin: EdgeInsets.symmetric(
          horizontal: symetricPad, vertical: symetricPad / 2),
      height: 160,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Container(
              height: 136,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: secondaryColor),
              child: Container(
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [elevation],
                    borderRadius: BorderRadius.circular(22)),
              ),
            ),
            VerticalDivider(
              color: primaryColor,
              width: 3,
              thickness: 1.5,
              indent: 41,
              endIndent: 20,
            ),
            Positioned(
              left: 0,
              bottom: 8,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: symetricPad,
                ),
                height: 120,
                // width: 200,
                child: Image.asset(product.image, fit: BoxFit.cover),
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 7, vertical: 2.5
                                // vertical: symetricPad * 2,
                                ),
                        decoration: BoxDecoration(
                            color: secondaryColor,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(22),
                                topLeft: Radius.circular(22))),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                StarIcon1(),
                                StarIcon1(),
                                StarIcon1(),
                                Padding(
                                    padding: EdgeInsets.all(0.0),
                                    child: starIcon2),
                                Padding(
                                    padding: EdgeInsets.all(0.0),
                                    child: starIcon3),
                              ],
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
    );
  }
}

class StarIcon1 extends StatelessWidget {
  const StarIcon1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(0.0), child: starIcon1);
  }
}