import 'package:flutter/material.dart';
import 'package:flutter_app_learning/models/products.dart';
import 'package:flutter_app_learning/widgets/drawer.dart';
import 'package:flutter_app_learning/widgets/product_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: ListView.builder(
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          return ProductWidget(
            item: CatalogModel.items[index],
          );
        },
      ),
    );
  }
}
