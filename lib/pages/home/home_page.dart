import 'package:flutter/material.dart';
import 'package:sweet_dessert/pages/detail/detail_page.dart';
import 'package:sweet_dessert/pages/profile/profile_page.dart';
import 'package:sweet_dessert/pages/type/type_page.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../data/data.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gradientEndColor,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [gradientStartColor, gradientEndColor],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.3, 0.7]),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'SWEET DESSERT',
                      style: GoogleFonts.itim(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    DropdownButton(
                      items: [
                        DropdownMenuItem(
                          child: Text(
                            'ABOUT COOKING DESSERT',
                            style: GoogleFonts.itim(
                              fontSize: 24,
                              color: Colors.brown,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                      onChanged: (value) {},
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Image.asset('assets/images/drop_down_icon.png'),
                      ),
                      underline: SizedBox(),
                    ),
                  ],
                ),
              ),
              Container(
                height: 480,
                padding: const EdgeInsets.only(left: 32),
                child: Swiper(
                  itemCount: dessert.length,
                  itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                  layout: SwiperLayout.STACK,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, a, b) => DetailPage(
                              dessert: dessert[index],
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
                              SizedBox(height: 100),
                              Card(
                                elevation: 20,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(32.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        height: 100,
                                      ),
                                      Text(
                                        dessert[index].name,
                                        style: GoogleFonts.itim(
                                          fontSize: 30,
                                          color: Colors.blue.shade900,
                                          fontWeight: FontWeight.w900,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      Text(
                                        dessert[index].type,
                                        style: GoogleFonts.itim(
                                          fontSize: 20,
                                          color: primaryTextColor,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      SizedBox(height: 32),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            'วิธีทำ',
                                            style: GoogleFonts.itim(
                                              fontSize: 22,
                                              color: secondaryTextColor,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Icon(
                                            Icons.arrow_forward,
                                            color: secondaryTextColor,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            right: 0,
                            child: Hero(
                              tag: dessert[index].id,
                              child: Image.asset(
                                dessert[index].iconImage,
                                width: 230.0,
                              ),
                            ),
                          ),
                          Positioned(
                            right: 24,
                            bottom: 60,
                            child: Text(
                              dessert[index].id.toString(),
                              style: GoogleFonts.itim(
                                fontSize: 200,
                                color: primaryTextColor.withOpacity(0.08),
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(36.0),
          ),
          color: navigationColor,
        ),
        padding: const EdgeInsets.all(26.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                size: 40.0,
                color: primaryTextColor,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.restaurant_menu,
                size: 40.0,
                color: secondaryTextColor,
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
            IconButton(
              icon: Icon(
                Icons.person,
                size: 40.0,
                color: secondaryTextColor,
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (BuildContext context,
                        Animation<double> animation,
                        Animation<double> secondaryAnimation) {
                      return ProfilePage();
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
    );
  }
}
