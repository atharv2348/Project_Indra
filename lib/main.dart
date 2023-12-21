import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: GoogleFonts.poppins().fontFamily),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color(0xFF638787),
                    ),
                    fillColor: Color(0xFFD6E3E2),
                    hintText: "Length",
                    filled: true,
                    iconColor: Color(0xFF638787),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        // color: Color(0xFFD6E3E2),
                        color: Colors.transparent,
                        // //   width: 2,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
