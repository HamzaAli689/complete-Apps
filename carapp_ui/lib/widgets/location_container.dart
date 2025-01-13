import 'package:flutter/material.dart';

import '../constant/colors.dart';

class LocationContainer extends StatelessWidget {
 final String title;
 final String subtitle;
  const LocationContainer({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: gray),
        ),
        child: Icon(
          Icons.location_on_outlined,
          color: Colors.white,
          size: 30,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
            color: gray),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          letterSpacing: 1,
        ),
      ),
    );
  }
}
