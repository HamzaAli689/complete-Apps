import 'package:flutter/material.dart';

class GrideContainer extends StatelessWidget {
  const GrideContainer({super.key, required this.title, required this.iconcolor, required this.icon});

  final String title;
  final IconData icon;
  final Color iconcolor;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  color: iconcolor,
                  borderRadius: BorderRadius.circular(100)
              ),
              child: Icon(icon,color: Colors.white,size: 30),
            ),
            SizedBox(height: 5,),
            Text(title,style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15
            ),)
          ],
        ),
      );

  }
}
