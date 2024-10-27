import 'package:flutter/material.dart';
import 'package:profile_app/details.dart';
import 'package:profile_app/home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'home',
    debugShowCheckedModeBanner: false,
    routes: {

      'home' :(context) => MyHome(),
      'details' :(context) => SocialMediaScreen(),
    },

  ));
}