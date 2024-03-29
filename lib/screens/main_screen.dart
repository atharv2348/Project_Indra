import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sapling_app/screens/area_calculator.dart';
import 'package:sapling_app/screens/fertiizer_recommendation.dart';
import 'package:sapling_app/screens/location.dart';
import 'package:sapling_app/screens/profile_page.dart';
import 'package:sapling_app/screens/soil_type.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Widget bodyWidget = Recommdator();
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      theme: ThemeData(fontFamily: GoogleFonts.poppins().fontFamily),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: Container(
                height: screenHeight,
                width: screenWidth,
                margin: EdgeInsets.all(20),
                child: bodyWidget)),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  setState(() {
                    bodyWidget = AreaCalculator();
                  });
                },
                child: Icon(
                  Icons.calculate,
                  color: Colors.black,
                ),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  setState(() {
                    bodyWidget = SoilType();
                  });
                },
                child: Icon(
                  Icons.nature_outlined,
                  color: Colors.black,
                ),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  setState(() {
                    bodyWidget = Recommdator();
                  });
                },
                child: Icon(
                  Icons.medical_services_outlined,
                  color: Colors.black,
                ),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: (){
                  setState(() {
                    bodyWidget = Location();
                  });
                },
                child: Icon(
                  Icons.location_on_outlined,
                  color: Colors.black,
                ),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  setState(() {
                    bodyWidget = ProfilePage();
                  });
                },
                child: Icon(
                  Icons.account_circle_outlined,
                  color: Colors.black,
                ),
              ),
              label: ''),
        ]),
      ),
    );
  }
}
