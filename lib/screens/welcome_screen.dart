import 'package:flutter/material.dart';

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
              'Welcome to My App',
              style: TextStyle(
                color: Colors.white, // Set text color
                fontSize: 24.0, // Set text size
                fontWeight: FontWeight.bold, // Set text weight
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
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
