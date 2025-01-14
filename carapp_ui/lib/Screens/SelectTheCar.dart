import 'package:flutter/material.dart';

import '../constant/colors.dart';

class SelectTheCar extends StatelessWidget {
  const SelectTheCar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      appBar: AppBar(
        backgroundColor: backcolor,
        leading: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: backcolor,
            borderRadius: BorderRadius.circular(50),
            border: Border.all(color: gray),
          ),
          child: Icon(
            Icons.location_on_outlined,
            color: Colors.white,
            size: 30,
          ),
        ),
        title: Column(
          children: [
            Text(
              "Dubai Airport",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1,
              ),
            ),
            Text(
              "Jan 13 2025 - Jan 18 2025",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: gray),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
      ),
    );
  }
}
