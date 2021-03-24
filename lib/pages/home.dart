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
              ? GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 16,
                  ),
                  itemBuilder: (context, index) {
                    final item = CatalogModel.items[index];
                    return Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: GridTile(
                        header: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                          ),
                          child: Text(
                            item.name,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        child: Image.asset(
                          item.image,
                        ),
                        footer: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.black,
                          ),
                          child: Text(
                            item.price.toString(),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: CatalogModel.items.length,
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
