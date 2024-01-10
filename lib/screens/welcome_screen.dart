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
      backgroundColor: Colors.black, // Set your desired background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/app_logo.jpg',
              scale: 2,
            ),
            const SizedBox(height: 16.0),
             const Text(
                  'Welcome to ',
                  style: TextStyle(
                    color: Colors.white, // Set text color
                    fontSize: 22.0, // Set text size
                  ),
                ),
            const Wrap(
              children: [
               
                Text(
                  'Indra Agro Tech ',
                  style: TextStyle(
                    color: Color(0xFF51b225), // Set text color
                    fontSize: 22.0, // Set text size
                    fontWeight: FontWeight.w900, // Set text weight
                  ),
                ),
                Text(
                  'App',
                  style: TextStyle(
                    color: Colors.white, // Set text color
                    fontSize: 22.0, // Set text size
                  ),
                ),
              ],
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
