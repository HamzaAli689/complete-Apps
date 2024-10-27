import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MtBtn extends StatelessWidget {
  String title;
   MtBtn({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .20, // Set height to screen size
      width: MediaQuery.of(context).size.width * .35,
      decoration: BoxDecoration(
        color: Colors.indigoAccent,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(100),
          bottomRight: Radius.circular(100),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Back",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),
          Text(
            title,
            style: TextStyle(fontSize: 20, color: Colors.white,
            fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    );
  }
}

class MyCustomBtn extends StatelessWidget {
  String title ;
  VoidCallback  onTap ;
  MyCustomBtn({super.key, required this.title,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width * .75,
        decoration: BoxDecoration(
            color: Colors.indigoAccent,
            borderRadius: BorderRadius.circular(50)
        ),
        child: Center(
          child: Text(title,style: TextStyle(
            color: Colors.white,fontSize: 18,

          ),),
        ),
      ),
    );
  }
}

