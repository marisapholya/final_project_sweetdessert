import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_page.dart';

class WelcomePage extends StatefulWidget {
  static const routeName = '/welcome';

  const WelcomePage({Key key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: const DecorationImage(
            image: const AssetImage("assets/images/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "SWEET",
                      style: GoogleFonts.itim(
                        fontSize: 100,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      "DESSERT",
                      style: GoogleFonts.itim(
                        fontSize: 70,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 80.0,
                right: 30.0,
                child: ElevatedButton.icon(
                  label: const Text('START'),
                  icon: const Icon(Icons.icecream_outlined),
                  style: ElevatedButton.styleFrom(
                    textStyle: GoogleFonts.itim(
                      fontSize: 25.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                    primary: Colors.pinkAccent.shade200,
                    onPrimary: Colors.white,
                    fixedSize: const Size(180.0, 60.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (BuildContext context,
                            Animation<double> animation,
                            Animation<double> secondaryAnimation) {
                          return const LoginPage();
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
