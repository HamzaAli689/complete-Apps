import 'package:flutter/material.dart';

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
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: whiteSmoke)
              ),
              child: IconButton(onPressed: (){}, icon: Icon(Icons.dashboard,color: whiteSmoke,)),
            ),
          ],
        ),
      ),
    );
  }
}
