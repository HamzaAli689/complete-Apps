import 'package:flutter/material.dart';

import '../Screens/courses.dart';

class Courses_Container extends StatelessWidget {
  const Courses_Container({super.key, required this.title, required this.imagePath, required this.onpress});

  final String title;
  final String imagePath;
  final VoidCallback onpress;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        width: 159,
        height: 200,
        decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Image.asset(imagePath,
                width: 80,
                height: 80,
              ),
            ),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "55 Videos",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
