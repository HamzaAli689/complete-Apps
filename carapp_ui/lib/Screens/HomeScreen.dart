import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../constant/colors.dart';

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
                  border: Border.all(color: whiteSmoke)),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.dashboard,
                    color: whiteSmoke,
                  )),
            ),
            Gap(20),
            Row(
              children: [
                Text(
                  "Rent a Car",
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    color: whiteSmoke,
                    letterSpacing: 1,
                  ),
                ),
                Gap(10),
                Text(
                  "Anytime",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                    color: gray,
                    letterSpacing: 1,
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
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: gray,
                letterSpacing: 1,
              ),
            ),
            Gap(10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: fillcolor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        "All",
                        style: TextStyle(
                          color: gray,
                          letterSpacing: 1,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),Gap(10),
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: fillcolor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5,right: 5),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            "assets/tesla.png",
                            width: 40,
                            height: 40,
                          ),
                          Text("Tesla",style: TextStyle(
                            color: gray,
                            fontSize: 15,
                            letterSpacing: 1
                          ),)

                        ],
                      ),
                    ),
                  ),Gap(10),
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: fillcolor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5,right: 5),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            "assets/tesla.png",
                            width: 40,
                            height: 40,
                          ),
                          Text("Mercedes",style: TextStyle(
                            color: gray,
                            fontSize: 15,
                            letterSpacing: 1
                          ),)

                        ],
                      ),
                    ),
                  ),Gap(10),
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: fillcolor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5,right: 5),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            "assets/tesla.png",
                            width: 40,
                            height: 40,
                          ),
                          Text("Tesla",style: TextStyle(
                              color: gray,
                              fontSize: 15,
                              letterSpacing: 1
                          ),)

                        ],
                      ),
                    ),
                  ),Gap(10),
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: fillcolor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5,right: 5),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            "assets/tesla.png",
                            width: 40,
                            height: 40,
                          ),
                          Text("Tesla",style: TextStyle(
                              color: gray,
                              fontSize: 15,
                              letterSpacing: 1
                          ),)

                        ],
                      ),
                    ),
                  ),Gap(10),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
