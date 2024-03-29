import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sapling_app/screens/flash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: GoogleFonts.poppins().fontFamily),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
