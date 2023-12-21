import 'package:flutter/material.dart';
import 'package:sapling_app/screens/main_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // Set your desired background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(
              size: 100.0, // Adjust the size of the logo
              // color: Colors.white, // Set logo color
            ),
            SizedBox(height: 16.0),
            Text(
              'Welcome to Team Indra App',
              style: TextStyle(
                color: Colors.white, // Set text color
                fontSize: 24.0, // Set text size
                fontWeight: FontWeight.bold, // Set text weight
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainScreen()));
                // Add your navigation logic here
                print('Get Started button pressed');
              },
              child: Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}