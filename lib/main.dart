import 'package:flutter/material.dart';
import 'pages/home/home_page.dart';
import 'pages/login/login_page.dart';
import 'pages/login/welcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SWEET DESSERT',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        WelcomePage.routeName: (context) => const WelcomePage(),
        LoginPage.routeName: (context) => const LoginPage(),
        HomePage.routeName: (context) => HomePage(),
      },
      initialRoute: WelcomePage.routeName,
      debugShowCheckedModeBanner: false,
    );
  }
}