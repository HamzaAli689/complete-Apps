import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Catagories_container extends StatelessWidget {
  final String title1;
  final String title2;
  final String imgPath1;
  final String imgPath2;

  const Catagories_container({super.key,
    required this.title1,
    required this.title2,
    required this.imgPath1,
    required this.imgPath2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      width: 120,
      decoration: BoxDecoration(
          color: Colors.grey[300]
      ),
      child: Column(
        children: [
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
            child: Image.asset(imgPath1),
          ),
          SizedBox(height: 5,),
          Text(title1,style: TextStyle(
            fontSize: 14
          ),),
          SizedBox(height: 20,),
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
            child: Image.asset(imgPath2),
          ),
          SizedBox(height: 5,),
          Text(title2,style: TextStyle(
              fontSize: 14
          ),),
        ],
      ),
    );
  }
}
