import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../constant/colors.dart';
import '../widgets/BrandContainer.dart';
import '../widgets/TabBar.dart';
import 'SelectTheCar.dart'; // Ensure this file exists with necessary color constants.

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backcolor,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: whiteSmoke),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.dashboard,
                  color: whiteSmoke,
                ),
              ),
            ),
            Gap(20),
            Row(
              children: [
                FittedBox(
                  child: Text(
                    "Rent a Car",
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: whiteSmoke,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                Gap(10),
                FittedBox(
                  child: Text(
                    "Anytime",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.normal,
                      color: gray,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              "Anywhere",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.normal,
                color: gray,
                letterSpacing: 1,
              ),
            ),
            Gap(20),
            Text(
              "Brands",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: gray,
                letterSpacing: 1,
              ),
            ),
            Gap(15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BrandContainer(label: 'All', ontap: () {  }, ),
                  Gap(10),
                  BrandContainer(assetPath: "assets/tesla.png", label: 'Tesla', ontap: () {
                   Get.to(() => SelectTheCar(),transition: Transition.rightToLeftWithFade,duration: Duration(seconds: 1));
                  },),
                  Gap(10),
                  BrandContainer(label:"BMW",assetPath: "assets/bmw.png", ontap: () {  },),
                  Gap(10),
                  BrandContainer(label:"Ferrari",assetPath: "assets/ferrari.png", ontap: () {  },),
                  Gap(10),
                  BrandContainer(label:"Mercedes",assetPath: "assets/merscdees.png", ontap: () {  },),
                  Gap(10),
                  BrandContainer(assetPath: "assets/tesla.png", label: 'Tesla', ontap: () {  },),
                  Gap(10),
                  BrandContainer(label:"BMW",assetPath: "assets/bmw.png", ontap: () {  },),
                ],
              ),
            ),
            Gap(10),
            Tabbar(),

          ],
        ),
      ),
    );
  }

  // Helper method to build brand containers

}
