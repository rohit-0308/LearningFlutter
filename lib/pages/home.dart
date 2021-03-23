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
    await Future.delayed(Duration(seconds: 2));
    final productJson =
        await rootBundle.loadString("assets/files/products.json");
    final decodedData = jsonDecode(productJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(
    //   20,
    //   (index) => CatalogModel.items[0],
    // );
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
              ? ListView.builder(
                  itemCount: CatalogModel.items.length,
                  itemBuilder: (context, index) {
                    return ProductWidget(
                      item: CatalogModel.items[index],
                    );
                  },
                )
              : Center(
                  child: CircularProgressIndicator(),
                ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            CupertinoIcons.cart,
          ),
          onPressed: () {},
        ));
  }
}
