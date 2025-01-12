import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../constant/colors.dart';

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
                color: green,
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
                          Gap(20),
                          ListTile(
                            leading: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(color: gray),
                              ),
                              child: Icon(
                                Icons.location_on_outlined,
                                size: 30,
                              ),
                            ),
                            title: Text(
                              "Pick-Up",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: gray),
                            ),
                            subtitle: Text(
                              "Dubai Airport",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
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
                                    border: Border.all(color: gray),
                                  ),
                                  child:  Image.asset("assets/arrow.png"),
                                ),
                              ],
                            ), 
                          ),
                          Gap(20),
                          ListTile(
                            leading: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(color: gray),
                              ),
                            ),
                          ),
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
