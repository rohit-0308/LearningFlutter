import 'dart:ffi';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_learning/models/products.dart';
import 'package:flutter_app_learning/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key key, this.catalog}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.grey[400],
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "\$ ${catalog.price}".text.bold.red700.xl3.make().pOnly(left: 25),
            ElevatedButton(
              onPressed: () {},
              child: "Buy".text.xl2.make(),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  MyThemes.darkBlusihColor,
                ),
                shape: MaterialStateProperty.all(StadiumBorder()),
              ),
            ).wh(100, 50).pOnly(right: 15)
          ],
        ).pOnly(bottom: 20),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(
                catalog.id.toString(),
              ),
              child: Image.asset(catalog.image),
            ).py32(),
            Expanded(
              child: VxArc(
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                height: 30.0,
                child: Container(
                  color: Colors.grey[400],
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog.name.text.xl4.bold
                          .color(MyThemes.darkBlusihColor)
                          .make(),
                      catalog.desc.text
                          .textStyle(context.captionStyle)
                          .xl
                          .make(),
                      10.heightBox,
                    ],
                  ).py64(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
