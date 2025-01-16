import 'package:flutter/material.dart';

import '../constant/colors.dart';

class CardetailsScreens extends StatelessWidget {
  const CardetailsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: backcolor,
      appBar: AppBar(
        backgroundColor: backcolor,
        leading: Padding(
          padding: const EdgeInsets.only(left: 5, top: 5),
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: backcolor,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: gray),
            ),
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
              size: 25,
            ),
          ),
        ),
        title: Text("Car Details",style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          letterSpacing: 1,
        ),),
        centerTitle: true,
        actions: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: backcolor,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: gray),
            ),
            child: Icon(
              Icons.favorite_border_outlined,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
