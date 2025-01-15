import 'package:flutter/material.dart';

import '../constant/colors.dart';

class Cardetailc extends StatelessWidget {
  final IconData icon;
  final String detail;
  const Cardetailc({super.key, required this.icon, required this.detail});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 37,
      width: 100,
      decoration: BoxDecoration(
        color: gray,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(icon,color: Colors.white,),
            Text(detail,style: TextStyle(
              color: Colors.white,fontSize: 16,
            ),)
          ],
        ),
      ),
    );
  }
}
