import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import '../Screens/SelectTheCar.dart';
import '../constant/colors.dart';
import 'Date_Container.dart';
import 'location_container.dart';

class Tabbar extends StatelessWidget {
  const Tabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.white,
              ),
              labelColor: Colors.black,
              // Text color for the selected tab
              unselectedLabelColor: Colors.white,
              // For unselected tabs
              indicatorSize: TabBarIndicatorSize.tab,
              // Fill the tab
              dividerColor: Colors.transparent,
              tabs: [
                Tab(text: 'Same Drop-Off'),
                Tab(text: 'Different Drop-Off'),
              ],
            ),
            Gap(10),
            Expanded(
              child: TabBarView(
                children: [
                  SingleChildScrollView(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        color: whiteSmoke,
                      ),
                      child: Column(
                        children: [
                          Gap(10),
                          LocationContainer(
                            title: 'Pick-Up',
                            subtitle: 'Dubai Airport',
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 20, right: 20, top: 5, bottom: 5),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Divider(
                                  color: gray,
                                  height: 1,
                                )),
                                Gap(3),
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(color: gray)),
                                  child: Center(
                                      child: Image.asset(
                                    "assets/arrow.png",
                                    height: 20,
                                    width: 20,
                                  )),
                                ),
                              ],
                            ),
                          ),
                          LocationContainer(
                            title: 'Drop-Off',
                            subtitle: 'Dubai Silicon-Oasis',
                          ),
                          //Divider is here
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: Divider(
                              color: gray,
                              height: 1,
                            ),
                          ),
                          DateContainer(),
                          Gap(50),
                          InkWell(
                            onTap: () {
                              Get.to(() => SelectTheCar(),
                                  transition: Transition.rightToLeftWithFade,
                                  duration: Duration(seconds: 1));
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height * .08,
                              width: MediaQuery.of(context).size.width * .70,
                              decoration: BoxDecoration(
                                color: green,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Center(
                                child: Text(
                                  "Search Car",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    letterSpacing: 1,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Gap(50),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Content for Same Drop-Off',
                      style: TextStyle(fontSize: 16, color: whiteSmoke),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
