import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../constant/colors.dart';

class Overviewcontainer extends StatelessWidget {
  final IconData icon;
  final String title;
  final String Subtitle;
  final String unit;
  const Overviewcontainer({super.key, required this.icon, required this.title, required this.Subtitle, required this.unit});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .23,
      width: size.width * .29,
      decoration: BoxDecoration(
        color: whiteSmoke,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon,color: backcolor,size: 30,),
            Gap(10),
            Text(
              title,
              style: TextStyle(
                color: backcolor,
                fontSize: 15,
                letterSpacing: 1,
                fontWeight: FontWeight.bold,
              ),
            ),
            Gap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  Subtitle,
                  style: TextStyle(
                    color: backcolor,
                    fontSize: 25,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  unit,
                  style: TextStyle(
                    color: backcolor,
                    fontSize: 12,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
