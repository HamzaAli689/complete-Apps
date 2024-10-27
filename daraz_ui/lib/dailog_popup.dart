import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class popup_dailog extends StatelessWidget {
  const popup_dailog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.deepOrange[300],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        color: Colors.deepOrange[300],
        margin: EdgeInsets.only(left: 10,right: 10),
        width: MediaQuery.of(context).size.width * 0.6,
        height: MediaQuery.of(context).size.height * 0.6,
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '7.7 FLASHSALE',
              style: TextStyle(
                  backgroundColor: Colors.white,
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.bold,fontSize: 20,
                  wordSpacing: -3
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
           Text("SUMMER",style: TextStyle(
             color: Colors.yellow,fontWeight: FontWeight.bold,
             fontSize: 25,
           ),),
            Text("DEALS",style: TextStyle(
              color: Colors.yellow,fontWeight: FontWeight.bold,
              fontSize: 25,
            ),),
            Text("Catch The Hottest Offrs",style: TextStyle(
              color: Colors.white,fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),
            Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.indigo
              ),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.red
                    ),
                    child: Column(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
