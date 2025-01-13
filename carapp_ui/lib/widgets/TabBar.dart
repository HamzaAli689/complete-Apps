import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../constant/colors.dart';
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
                        color: fillcolor,
                      ),
                      child: Column(
                        children: [
                          Gap(20),
                          LocationContainer(title: 'Pick-Up', subtitle: 'Dubai Airport',),
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
                                  child:  Center(child: Image.asset("assets/arrow.png",height: 20,width: 20,)),
                                ),
                              ],
                            ), 
                          ),
                          LocationContainer(title: 'Drop-Off', subtitle: 'Dubia Silicon-Oasis',),
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
