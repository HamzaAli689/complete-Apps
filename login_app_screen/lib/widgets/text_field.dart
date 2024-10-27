import 'package:flutter/material.dart';
import 'color.dart';

class MyTextField extends StatelessWidget {
  final Myhint;

  final Mylabel;

  final MyController;

  bool hide;

  MyTextField(
      {super.key,
      required this.Myhint,
      required this.Mylabel,
      required this.hide,
      required this.MyController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 15),
      child: TextField(
        controller: MyController,
        style: TextStyle(color: Colors.white),
        obscureText: hide,
        decoration: InputDecoration(
          labelText: Mylabel,
          labelStyle: TextStyle(
            color: Colors.white,
          ),
          hintText: Myhint,
          hintStyle: TextStyle(color: Colors.white24),

          // Background and Padding
          filled: true,
          fillColor: SBcolor,
          // Background color
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),

          // Custom Borders
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
    );
  }
}

class MycustomeText extends StatelessWidget {
  String title;

  MycustomeText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(color: Colors.white, fontSize: 12),
    );
  }
}
