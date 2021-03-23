import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_app_learning/models/products.dart';
import 'package:flutter_app_learning/widgets/drawer.dart';
import 'package:flutter_app_learning/widgets/product_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final productJson =
        await rootBundle.loadString("assets/files/products.json");
    final decodedData = jsonDecode(productJson);
    var productsData = decodedData["products"];
    print(productsData);
  }

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(
      20,
      (index) => CatalogModel.items[0],
    );
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ProductWidget(
              item: dummyList[0],
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            CupertinoIcons.cart,
          ),
          onPressed: () {},
        ));
  }
}
