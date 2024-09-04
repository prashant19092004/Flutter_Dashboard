import 'package:flutter/material.dart';
import 'package:test3/Home.dart';



class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF56D7C5), // Background color matching the image
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Image.network('https://static.vecteezy.com/system/resources/previews/012/986/755/non_2x/abstract-circle-logo-icon-free-png.png'),
                    ),
                  ),
                ],
              ),
            ),
            // Login Button
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
              child: ElevatedButton(
                onPressed: () {
                  // Handle login action
                  Navigator.push(
                    context,MaterialPageRoute(builder: (context) => HomePage()),);
                },
                style: ElevatedButton.styleFrom(
                  // primary: Colors.white, // Button color
                  // onPrimary: Color(0xFF56D7C5), // Text color
                  minimumSize: const Size(double.infinity, 50), // Full width button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: const Text(
                  'LOGIN',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            // Register Button
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
              child: ElevatedButton(
                onPressed: () {
                  // Handle register action
                },
                style: ElevatedButton.styleFrom(
                  // primary: Colors.transparent, // Transparent background
                  // onPrimary: Colors.white, // Text color
                  side: const BorderSide(color: Colors.white, width: 2), // Border
                  minimumSize: const Size(double.infinity, 50), // Full width button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: const Text(
                  'REGISTER',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


