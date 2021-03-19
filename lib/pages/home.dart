import 'package:flutter/material.dart';
import 'package:flutter_app_learning/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
          child: ElevatedButton(
        child: Text('Login Page'),
        onPressed: () => {
          Navigator.pushNamed(context, '/login'),
        },
      )),
    );
  }
}
