import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/homepage.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var days = 300;
    return MaterialApp(
      //  home: Homepage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple,
      fontFamily:GoogleFonts.lato().fontFamily),
      darkTheme: ThemeData(brightness: Brightness.dark),
routes: {
        "/": (context) => Login(),
        MyRoutes.homeRoute : (context) => Homepage(),
        MyRoutes.loginRoute: (context) => Login(),
      },
    );
  }
}
