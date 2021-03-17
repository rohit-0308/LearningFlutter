import 'package:flutter/material.dart';
import 'package:flutter_app_learning/utils/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login.png",
              fit: BoxFit.cover,
            ),
            Text(
              "Welcome to Login Page",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter username",
                      labelText: "Username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              child: Text(
                'Login',
                style: TextStyle(fontSize: 18),
              ),
              style: TextButton.styleFrom(
                minimumSize: Size(130, 40),
              ),
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
            ),
            Center(
              child: ElevatedButton(
                child: Text(
                  'Go To Home Page',
                  style: TextStyle(fontSize: 18),
                ),
                style: TextButton.styleFrom(minimumSize: Size(250, 40)),
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
