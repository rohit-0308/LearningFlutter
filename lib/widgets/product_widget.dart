import 'package:flutter/material.dart';
import 'package:flutter_app_learning/models/products.dart';

class ProductWidget extends StatelessWidget {
  final Item item;

  const ProductWidget({Key key, @required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {},
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "Rs. ${item.price}",
          textScaleFactor: 1.2,
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
