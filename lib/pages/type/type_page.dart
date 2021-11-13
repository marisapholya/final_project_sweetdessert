import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sweet_dessert/pages/home/home_page.dart';
import 'package:sweet_dessert/pages/type/bakery/bakery_page.dart';
import 'package:sweet_dessert/pages/type/drink/drink_page.dart';
import 'package:sweet_dessert/pages/type/icecream/icecream_page.dart';
import 'package:sweet_dessert/pages/type/thaidesert/thaidesert_page.dart';

import '../constants.dart';

class TypePage extends StatefulWidget {
  const TypePage({key}) : super(key: key);

  @override
  _TypePageState createState() => _TypePageState();
}

class _TypePageState extends State<TypePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: navigationColor,
      body: Container(
        color: Colors.pink.shade50,
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Header
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              size: 40.0,
                              color: Colors.brown.shade500,
                            ),
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (BuildContext context,
                                      Animation<double> animation,
                                      Animation<double> secondaryAnimation) {
                                    return HomePage();
                                  },
                                  transitionsBuilder: (BuildContext context,
                                      Animation<double> animation,
                                      Animation<double> secondaryAnimation,
                                      Widget child) {
                                    return SlideTransition(
                                      position: Tween<Offset>(
                                        begin: const Offset(-1.0, 0.0),
                                        end: const Offset(0.0, 0.0),
                                      ).animate(animation),
                                      child: child,
                                    );
                                  },
                                  transitionDuration:
                                      const Duration(seconds: 1),
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            'ประเภท',
                            style: GoogleFonts.itim(
                              fontSize: 50.0,
                              color: Colors.brown.shade500,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Text Category
                    Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        children: [
                          GestureDetector(
                            child: Container(
                              width: 500.0,
                              height: 250.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/bakery.png"),
                                  fit: BoxFit.cover,
                                ),
                                border: Border.all(
                                  color: navigationColor,
                                  width: 3,
                                ),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'เบเกอรี่',
                                      style: GoogleFonts.itim(
                                        fontSize: 50.0,
                                        color: Colors.brown.shade800,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (BuildContext context,
                                      Animation<double> animation,
                                      Animation<double> secondaryAnimation) {
                                    return BakeryPage();
                                  },
                                  transitionsBuilder: (BuildContext context,
                                      Animation<double> animation,
                                      Animation<double> secondaryAnimation,
                                      Widget child) {
                                    return SlideTransition(
                                      position: Tween<Offset>(
                                        begin: const Offset(1.0, 0.0),
                                        end: const Offset(0.0, 0.0),
                                      ).animate(animation),
                                      child: child,
                                    );
                                  },
                                  transitionDuration:
                                      const Duration(seconds: 1),
                                ),
                              );
                            },
                          ),
                          SizedBox(height: 20.0),
                          GestureDetector(
                            child: Container(
                              width: 500.0,
                              height: 250.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/thaidessert.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                border: Border.all(
                                  color: navigationColor,
                                  width: 3,
                                ),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'ขนมไทย',
                                      style: GoogleFonts.itim(
                                        fontSize: 50.0,
                                        color: Colors.brown.shade800,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (BuildContext context,
                                      Animation<double> animation,
                                      Animation<double> secondaryAnimation) {
                                    return ThaiDesertPage();
                                  },
                                  transitionsBuilder: (BuildContext context,
                                      Animation<double> animation,
                                      Animation<double> secondaryAnimation,
                                      Widget child) {
                                    return SlideTransition(
                                      position: Tween<Offset>(
                                        begin: const Offset(1.0, 0.0),
                                        end: const Offset(0.0, 0.0),
                                      ).animate(animation),
                                      child: child,
                                    );
                                  },
                                  transitionDuration:
                                      const Duration(seconds: 1),
                                ),
                              );
                            },
                          ),
                          SizedBox(height: 20.0),
                          GestureDetector(
                            child: Container(
                              width: 500.0,
                              height: 250.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/icecerm.png"),
                                  fit: BoxFit.cover,
                                ),
                                border: Border.all(
                                  color: navigationColor,
                                  width: 3,
                                ),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '  ไอศกรีมของหวาน',
                                      style: GoogleFonts.itim(
                                        fontSize: 40.0,
                                        color: Colors.brown.shade800,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (BuildContext context,
                                      Animation<double> animation,
                                      Animation<double> secondaryAnimation) {
                                    return IceCreamPage();
                                  },
                                  transitionsBuilder: (BuildContext context,
                                      Animation<double> animation,
                                      Animation<double> secondaryAnimation,
                                      Widget child) {
                                    return SlideTransition(
                                      position: Tween<Offset>(
                                        begin: const Offset(1.0, 0.0),
                                        end: const Offset(0.0, 0.0),
                                      ).animate(animation),
                                      child: child,
                                    );
                                  },
                                  transitionDuration:
                                      const Duration(seconds: 1),
                                ),
                              );
                            },
                          ),
                          SizedBox(height: 20.0),
                          GestureDetector(
                            child: Container(
                              width: 500.0,
                              height: 250.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/drink.png"),
                                  fit: BoxFit.cover,
                                ),
                                border: Border.all(
                                  color: navigationColor,
                                  width: 3,
                                ),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'เครื่องดื่ม',
                                      style: GoogleFonts.itim(
                                        fontSize: 50.0,
                                        color: Colors.brown.shade800,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (BuildContext context,
                                      Animation<double> animation,
                                      Animation<double> secondaryAnimation) {
                                    return DrinkPage();
                                  },
                                  transitionsBuilder: (BuildContext context,
                                      Animation<double> animation,
                                      Animation<double> secondaryAnimation,
                                      Widget child) {
                                    return SlideTransition(
                                      position: Tween<Offset>(
                                        begin: const Offset(1.0, 0.0),
                                        end: const Offset(0.0, 0.0),
                                      ).animate(animation),
                                      child: child,
                                    );
                                  },
                                  transitionDuration:
                                      const Duration(seconds: 1),
                                ),
                              );
                            },
                          ),
                          SizedBox(height: 20.0),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
