import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sweet_dessert/pages/data/data_icecream.dart';
import 'package:sweet_dessert/pages/type/icecream/icecream_page.dart';
import '../constants.dart';

class DetailPageIcecream extends StatelessWidget {
  final Icecream icecream;

  const DetailPageIcecream({Key key, this.icecream}) : super(key: key);

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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  //รูป ชื่อกับ type
                  Padding(
                    padding: const EdgeInsets.only(left:32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: 60.0),
                        ClipRRect(
                          borderRadius: new BorderRadius.circular(150.0),
                          child: Image.asset(
                            icecream.image,
                            fit: BoxFit.fill,
                            width: 400.0,
                            height: 200.0,
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          icecream.name,
                          style: GoogleFonts.itim(
                            fontSize: 56,
                            color: primaryTextColor,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          icecream.type,
                          style: GoogleFonts.itim(
                            fontSize: 31,
                            color: primaryTextColor,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Divider(color: Colors.black38),
                      ],
                    ),
                  ),
                  //  ส่วนผสม
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 32.0),
                        child: Text(
                          'ส่วนผสม',
                          style: GoogleFonts.itim(
                            fontSize: 35,
                            color: const Color(0xff47455f),
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 32.0),
                        child:
                        Text(
                          icecream.ingredient ?? '',
                          maxLines: 100,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.itim(
                            fontSize: 20,
                            color: contentTextColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),

                  Divider(color: Colors.black38),
                  // วิธีทำ
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: Text(
                      'วิธีทำ',
                      style: GoogleFonts.itim(
                        fontSize: 35,
                        color: const Color(0xff47455f),
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: Text(
                      icecream.description ?? '',
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
                icecream.id.toString(),
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
                        return IceCreamPage();
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
