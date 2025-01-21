import 'package:flutter/material.dart';

import '../constant/colors.dart';

class CardetailsScreens extends StatelessWidget {
  const CardetailsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backcolor,
      appBar: AppBar(
        backgroundColor: backcolor,
        leading: Container(
            child: Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.white,
          size: 20,
        )),
        title: Text(
          "Car Details",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 1,
          ),
        ),
        centerTitle: true,
        actions: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: backcolor,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: gray),
            ),
            child: Icon(
              Icons.favorite_border_outlined,
              color: Colors.white,
              size: 20,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: size.height * .40,
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(300),
                  color: whiteSmoke,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    "assets/images/1.png",
                  ),
                )
              ),
            ),
            Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                color: fillcolor
              ),
            )
          ],
        ),
      ),
    );
  }
}
