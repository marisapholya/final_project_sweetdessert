import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sweet_dessert/pages/data/data_thaidessert.dart';
import 'package:sweet_dessert/pages/type/thaidesert/thaidesert_page.dart';
import '../constants.dart';

class DetailPageThaiDessert extends StatelessWidget {
  final ThaiDessert thaidessert;

  const DetailPageThaiDessert({Key key, this.thaidessert}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: navigationColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 60.0,
                        ),
                        ClipOval(
                          child: Image.asset(
                            thaidessert.image,
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          thaidessert.name,
                          style: GoogleFonts.itim(
                            fontSize: 56,
                            color: primaryTextColor,
                            fontWeight: FontWeight.w900,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          thaidessert.type,
                          style: GoogleFonts.itim(
                            fontSize: 31,
                            color: primaryTextColor,
                            fontWeight: FontWeight.w300,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Divider(color: Colors.black38),
                        SizedBox(height: 32),
                        Text(
                          'ส่วนผสม',
                          style: GoogleFonts.itim(
                            fontSize: 35,
                            color: const Color(0xff47455f),
                            fontWeight: FontWeight.w300,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          thaidessert.ingredient ?? '',
                          maxLines: 100,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.itim(
                            fontSize: 20,
                            color: contentTextColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 32),
                        Divider(color: Colors.black38),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: Text(
                      'วิธีทำ',
                      style: GoogleFonts.itim(
                        fontSize: 35,
                        color: const Color(0xff47455f),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0, right: 32.0),
                    child: Text(
                      thaidessert.description ?? '',
                      maxLines: 100,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.itim(
                        fontSize: 20,
                        color: contentTextColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 100),
                ],
              ),
            ),
            Positioned(
              bottom: 30,
              right: 30,
              child: Text(
                thaidessert.id.toString(),
                style: GoogleFonts.itim(
                  fontSize: 247,
                  color: primaryTextColor.withOpacity(0.08),
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: IconButton(
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
                        return ThaiDesertPage();
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
            ),
          ],
        ),
      ),
    );
  }
}
