import 'package:carapp_ui/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../constant/colors.dart';
import '../widgets/CarContainer.dart';
import 'CarDetails_Screens.dart';

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
          child: InkWell(
            onTap: (){
              Get.to( () => Homescreen());
            },
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
                size: 20,
              ),
            ),
          ),
        ),
        title: Column(
          children: [
            Text(
              "Dubai Airport",
              style: TextStyle(
                fontSize: 22,
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
              Car_Container(
                imagePath: "assets/images/1.png",
                model: 'S',
                ontap: () {
                  Get.to(
                      () => CardetailsScreens(
                            imagepath: "assets/images/1.png",
                            model: 'Model S',
                            rent: '\$380',
                            speed: '149',
                          ),
                      transition: Transition.rightToLeftWithFade,
                      duration: Duration(seconds: 1));
                }, speed: '149 mph',
              ),
              Gap(10),
              Car_Container(
                imagePath: "assets/images/3.png",
                model: 'X',
                ontap: () {
                  Get.to(
                          () => CardetailsScreens(
                        imagepath: "assets/images/3.png",
                        model: 'Model Y',
                        rent: '\$340',
                        speed: '135',
                      ),
                      transition: Transition.rightToLeftWithFade,
                      duration: Duration(seconds: 1));
                }, speed: '135 mph',
              ),
              Gap(10),
              Car_Container(
                imagePath: "assets/images/4.png",
                model: 'Y',
                ontap: () {
                  Get.to(
                          () => CardetailsScreens(
                        imagepath: "assets/images/4.png",
                        model: 'Model Y',
                        rent: '\$370',
                        speed: '140',
                      ),
                      transition: Transition.rightToLeftWithFade,
                      duration: Duration(seconds: 1));
                }, speed: '140 mph',
              ),
              Gap(10),
              Car_Container(
                imagePath: "assets/images/5.png",
                model: '3',
                ontap: () {
                  Get.to(
                          () => CardetailsScreens(
                        imagepath: "assets/images/5.png",
                        model: 'Model X',
                        rent: '\$390',
                        speed: '145',
                      ),
                      transition: Transition.rightToLeftWithFade,
                      duration: Duration(seconds: 1));
                }, speed: '145 mph',
              ),
              Gap(10),
              Car_Container(
                imagePath: "assets/images/2.png",
                model: 'S',
                ontap: () {
                  Get.to(
                          () => CardetailsScreens(
                        imagepath: "assets/images/2.png",
                        model: 'Model S',
                        rent: '\$370',
                        speed: '139',
                      ),
                      transition: Transition.rightToLeftWithFade,
                      duration: Duration(seconds: 1));
                }, speed: "139 mph",
              ),
              Gap(10),
            ],
          ),
        ),
      ),
    );
  }
}
