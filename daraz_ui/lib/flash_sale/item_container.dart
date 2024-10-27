import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class item_container extends StatelessWidget {
  final String text;
  final String first_price;
  final String img_path;

  const item_container({super.key,
    required this.text,
    required this.first_price,
    required this.img_path,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
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
            child: Image.asset(img_path),
          ),
          Row(
            children: [
              Text("Rs",style: TextStyle(
                  fontSize: 12
              ),),
              SizedBox(width: 3,),
              Text(text,style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17
              ),)
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 70),
            child: Text(first_price,style: TextStyle(
              fontSize: 12,
              decoration: TextDecoration.lineThrough,
            ),),
          ),
          SizedBox(height: 10,),
          LinearPercentIndicator(
            width: 120,

            barRadius: Radius.circular(30),
            lineHeight: 14,
            percent: 0.7,
            backgroundColor: Colors.red[100],
            progressColor: Colors.red,
          ),
        ],
      ),
    );
  }
}
