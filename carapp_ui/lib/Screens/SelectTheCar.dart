import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../constant/colors.dart';
import '../widgets/CarContainer.dart';
import '../widgets/cardetailC.dart';

class SelectTheCar extends StatelessWidget {
  const SelectTheCar({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backcolor,
      appBar: AppBar(
        backgroundColor: backcolor,
        leading: Padding(
          padding: const EdgeInsets.only(left: 5, top: 5),
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: backcolor,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: gray),
            ),
            child: Icon(
              Icons.location_on_outlined,
              color: Colors.white,
              size: 27,
            ),
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
                  fontSize: 12, fontWeight: FontWeight.normal, color: gray),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Car_Container(imagePath: "assets/images/1.png", model: 'S',),
              Gap(10),
              Car_Container(imagePath: "assets/images/2.png", model: 'X',),
              Gap(10),
              Car_Container(imagePath: "assets/images/4.png", model: 'Y',),
              Gap(10),
            ],
          ),
        ),
      ),
    );
  }
}
