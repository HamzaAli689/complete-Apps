import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    // Start a timer of 3 seconds and navigate to HomeScreen
    Timer(const Duration(seconds: 3), () {
      Get.toNamed("/home");

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Background color of the splash screen
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo image
            Image.asset(
              'assets/logo2.png', // Replace with your image path
              width: 170,
              height: 170,
            ),
            const SizedBox(height: 20),
            // Text widget under the logo
            // Text(
            //   'Welcome to MyApp',
            //   style: TextStyle(
            //     fontSize: 24,
            //     fontWeight: FontWeight.bold,
            //     color: Colors.blue,
            //   ),
            // ),
            const SizedBox(height: 20),
            // Optional: Add a loading indicator
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.indigo),
            ),
          ],
        ),
      ),
    );
  }
}