import 'package:flutter/material.dart';
import 'package:flutter_app_learning/pages/home.dart';
import 'package:flutter_app_learning/pages/login.dart';
import 'package:flutter_app_learning/utils/routes.dart';
import 'package:flutter_app_learning/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: MyThemes.lightTheme(context),
      // darkTheme: MyThemes.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
