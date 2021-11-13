import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sweet_dessert/pages/home/home_page.dart';
import 'package:sweet_dessert/pages/login/welcome_page.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: const DecorationImage(
            image: const AssetImage("assets/images/bgprofile.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  children: [
                    // ย้อนกลับไปหน้า HOME และออกจากระบบ
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
                                  transitionDuration: const Duration(seconds: 1),
                                ),
                              );
                            },
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.login_outlined,
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
                                    return WelcomePage();
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
                        ],
                      ),
                    ),
                    // ข้อความ
                    Text(
                      'MY PROFILE',
                      style: GoogleFonts.itim(
                        fontSize: 50.0,
                        color: Colors.brown,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    // profile
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.pinkAccent.shade100,
                          width: 3.0,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(100.0),
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: new BorderRadius.circular(100.0),
                        child: Image(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/me.jpg"),
                          width: 200.0,
                          height: 200.0,
                        ),
                      ),
                    ),
                    // ข้อความ
                    SizedBox(height: 20.0),
                    Container(
                      width: 400.0,
                      height: 400.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.pinkAccent.shade200,
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(height: 20.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'HI! MARISA',
                                style: GoogleFonts.itim(
                                  fontSize: 35.0,
                                  color: Colors.brown,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            height: 50.0,
                            color: Colors.pinkAccent,
                            thickness: 3.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 20.0,
                              ),
                              Icon(
                                Icons.person,
                                size: 30.0,
                                color: Colors.brown,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Username : marisa ',
                                style: GoogleFonts.itim(
                                  fontSize: 25.0,
                                  color: Colors.brown,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 20.0,
                              ),
                              Icon(
                                Icons.vpn_key,
                                size: 30.0,
                                color: Colors.brown,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Password : marisa ',
                                style: GoogleFonts.itim(
                                  fontSize: 25.0,
                                  color: Colors.brown,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 20.0,
                              ),
                              Icon(
                                Icons.email,
                                size: 30.0,
                                color: Colors.brown,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'E-mail : mari@gmail.com ',
                                style: GoogleFonts.itim(
                                  fontSize: 25.0,
                                  color: Colors.brown,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 20.0,
                              ),
                              Icon(
                                Icons.phone,
                                size: 30.0,
                                color: Colors.brown,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Phone : 098-xxxxxxx ',
                                style: GoogleFonts.itim(
                                  fontSize: 25.0,
                                  color: Colors.brown,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 20.0,
                              ),
                              Icon(
                                Icons.cake_rounded,
                                size: 30.0,
                                color: Colors.brown,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Date of birth : 31/12/20xx',
                                style: GoogleFonts.itim(
                                  fontSize: 25.0,
                                  color: Colors.brown,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
