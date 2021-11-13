import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sweet_dessert/pages/data/data_icecream.dart';
import 'package:sweet_dessert/pages/detail/detail_page_icecream.dart';
import 'package:sweet_dessert/pages/home/home_page.dart';

import '../type_page.dart';

class IceCreamPage extends StatefulWidget {
  const IceCreamPage({key}) : super(key: key);

  @override
  _IceCreamPageState createState() => _IceCreamPageState();
}

class _IceCreamPageState extends State<IceCreamPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: const DecorationImage(
            image: const AssetImage("assets/images/bg03.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  // ย้อนกลับไปหน้า HOME & หัวข้อ
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  return TypePage();
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
                                transitionDuration: const Duration(seconds: 1),
                              ),
                            );
                          },
                        ),
                        Text(
                          'ไอศกรีม & ของหวาน',
                          style: GoogleFonts.itim(
                            fontSize: 35.0,
                            color: Colors.brown,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.home_rounded,
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
                                      begin: const Offset(1.0, 0.0),
                                      end: const Offset(0.0, 0.0),
                                    ).animate(animation),
                                    child: child,
                                  );
                                },
                                transitionDuration: const Duration(seconds: 1),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  // เนื้อหา
                  SingleChildScrollView(
                    child: Container(
                      height: 650.0,
                      padding: const EdgeInsets.all(16.0),
                      child: ListView.builder(
                        itemCount: icecream.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (context, a, b) => DetailPageIcecream(
                                    icecream: icecream[index],
                                  ),
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
                                  transitionDuration: const Duration(seconds: 1),
                                ),
                              );
                            },
                            child: Stack(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Card(
                                      elevation: 15.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(30.0),
                                      ),
                                      color: Colors.yellow.shade50,
                                      child: Padding(
                                        padding: const EdgeInsets.all(32.0),
                                        child: Column(
                                          crossAxisAlignment:CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(
                                              children: [
                                                ClipRRect(
                                                  borderRadius: BorderRadius.circular(40.0),
                                                  child: Image.asset(
                                                    icecream[index].image,
                                                    width: 120.0,
                                                    height: 120.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                SizedBox(width: 20.0),
                                                Text(
                                                  icecream[index].name,
                                                  style: GoogleFonts.itim(
                                                    fontSize: 24.0,
                                                    color: Colors.brown,
                                                    fontWeight: FontWeight.w900,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
