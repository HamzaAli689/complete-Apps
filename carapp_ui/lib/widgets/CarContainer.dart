import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'cardetailC.dart';

class Car_Container extends StatelessWidget {
  final String imagePath;
  final String model;
  const Car_Container({super.key, required this.imagePath, required this.model});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return  Card(
      elevation: 5,
      child: Container(
        height: size.height * .34,
        width: size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                        const EdgeInsets.only(left: 15,),
                        child: Image.asset(
                          "assets/teslaBlack.png",
                          width: 30,
                          height: 30,
                        ),
                      ),
                      Gap(10),
                      Row(
                        children: [
                          Text(
                            "Tesla",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          Gap(5),
                          Text(
                            "Model",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Gap(10),
                      Text(
                        model,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  imagePath,
                  height: size.height * .25,
                  width: size.width * .57,
                )
              ],
            ),
            Gap(10),
            Padding(
              padding:  EdgeInsets.only(left: 15,right: 15),
              child: Row(
                children: [
                  Cardetailc(icon: Icons.airline_seat_recline_extra, detail: '5 Seat',),
                  Gap(10),
                  Cardetailc(icon: Icons.speed, detail: '149mph',),
                  Gap(10),
                  Cardetailc(icon: Icons.attach_money, detail: '380/Day',),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
