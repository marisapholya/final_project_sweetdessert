import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:sweet_dessert/pages/home/home_page.dart';
import 'package:sweet_dessert/pages/login/welcome_page.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginPage extends StatefulWidget {
  static const routeName = '/login';

  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _controlleruser = TextEditingController();
  final _controllerpassword = TextEditingController();
  String user, password;
  final _correctUser = "marisa";
  final _correctPassword = "marisa";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: const BoxDecoration(
            image: const DecorationImage(
              image: const AssetImage("assets/images/bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: <Widget>[
              // ที่กรอก login
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 340.0,),
                    Container(
                      color: Colors.white,
                      height: 450.0,
                      width: double.maxFinite,
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'LOGIN',
                            style: GoogleFonts.itim(
                              fontSize: 50,
                              color: Colors.pinkAccent.shade200,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'USERNAME',
                                style: GoogleFonts.itim(
                                  fontSize: 20,
                                  color: Colors.pinkAccent.shade100,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 4.0),
                          LoginForm(),
                          SizedBox(height: 8.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'USERNAME',
                                style: GoogleFonts.itim(
                                  fontSize: 20,
                                  color: Colors.pinkAccent.shade100,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 4.0),
                          PasswordForm(),
                          SizedBox(height: 20.0),
                          ElevatedButton.icon(
                            icon: const Icon(Icons.lock_open),
                            label: const Text('LOGIN'),
                            style: ElevatedButton.styleFrom(
                              textStyle: GoogleFonts.itim(
                                fontSize: 25.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                              ),
                              primary: Colors.pinkAccent.shade200,
                              onPrimary: Colors.white,
                              fixedSize: const Size(600.0, 60.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            onPressed: () {
                              CheckLogin(context);
                            },
                          ),
                          SizedBox(height: 20.0),
                          Text(
                            'USERNAME : marisa Password : marisa',
                            style: GoogleFonts.itim(
                              fontSize: 20,
                              color: Colors.pinkAccent.shade100,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // ปุ่มย้อนกลับ
              Positioned(
                top: 80.0,
                child: Padding(
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextField PasswordForm() {
    return TextField(
      controller: _controllerpassword,
      style: const TextStyle(
        color: Colors.pinkAccent,
        fontSize: 28.0,
        fontWeight: FontWeight.bold,
      ),
      cursorColor: Colors.pinkAccent,
      textAlign: TextAlign.center,
      obscureText: true,
      decoration: InputDecoration(
        isDense: true,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        prefixIcon: const Icon(Icons.vpn_key),
        hintText: 'PASSWORD',
        hintStyle: TextStyle(
          fontSize: 20.0,
          color: Colors.pinkAccent.shade100.withOpacity(0.4),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }

  TextField LoginForm() {
    return TextField(
      controller: _controlleruser,
      style: const TextStyle(
        color: Colors.pinkAccent,
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
      ),
      cursorColor: Colors.pinkAccent,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        isDense: true,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        prefixIcon: const Icon(Icons.person),
        hintText: 'USERNAME',
        hintStyle: TextStyle(
          fontSize: 20.0,
          color: Colors.pinkAccent.shade100.withOpacity(0.4),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }

  void CheckLogin(BuildContext context) {
    return setState(() {
      user = _controlleruser.text;
      _controlleruser.clear();
      password = _controllerpassword.text;
      _controllerpassword.clear();

      if (user != null && password != null) {
        if (user == _correctUser && password == _correctPassword) {
          Navigator.pushReplacement(
            context,
            PageRouteBuilder(
              pageBuilder: (BuildContext context, Animation<double> animation,
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
              transitionDuration: const Duration(seconds: 3),
            ),
          );
        } else {
          _showMaterialDialog(
            'ไม่สำเร็จ',
            'Username หรือ Password ผิดพลาด',
          );
        }
      }
    });
  }

  void _showMaterialDialog(String title, String msg) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.pink.shade50,
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 30.0,
              color: Colors.red,
            ),
          ),
          content: Text(
            msg,
            style: const TextStyle(
              fontSize: 18.0,
              color: Colors.black,
            ),
          ),
          actions: [
            TextButton(
              child: const Text(
                'OK',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.red,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
