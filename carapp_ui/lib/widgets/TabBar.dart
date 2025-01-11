import 'package:flutter/material.dart';

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
                color: whiteSmoke,
              ),
              labelColor: Colors.black, // Text color for the selected tab
              unselectedLabelColor: Colors.white, // For unselected tabs
              indicatorSize: TabBarIndicatorSize.tab, // Fill the tab
              dividerColor: Colors.transparent,
              tabs: [
                Tab(text: 'Same Drop-Off'),
                Tab(text: 'Different Drop-Off'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Center(
                    child: Text(
                      'Content for Same Drop-Off',
                      style: TextStyle(fontSize: 16, color: whiteSmoke),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Content for Different Drop-Off',
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
