import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app_screen/Screens/Login_screen.dart';
import 'package:login_app_screen/Screens/home_screen.dart';
import 'package:login_app_screen/Screens/next_screens.dart';
import 'package:login_app_screen/Screens/signup_screen.dart';
import 'package:login_app_screen/Screens/splash_screen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Master Mind",
      home: SplashScreen(),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => SplashScreen()),
        GetPage(name: '/login', page: () => LoginScreen()),
        GetPage(name: '/home', page: () => HomeScreen()),
        GetPage(name: '/next', page: () => NextScreens()),
        GetPage(name: '/signup', page: () => SignUpScreen()),
        // Add other routes here
      ],
    );
  }
}
