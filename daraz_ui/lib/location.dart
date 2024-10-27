import 'package:flutter/material.dart';

class Location_Container extends StatelessWidget {
  const Location_Container({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 20, right: 20, top: 195),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 2,
              offset: Offset(2, 2),
            ),
          ],
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.location_on_outlined,
            color: Colors.red,
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: VerticalDivider(
              color: Colors.black,
            ),
          ),
          Text(
            "Punjab, Vehari, Vehari, Main City",
            style: TextStyle(fontSize: 10),
          )
        ],
      ),
    );
  }
}
