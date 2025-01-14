import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../constant/colors.dart';

class SelectTheCar extends StatelessWidget {
  const SelectTheCar({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backcolor,
      appBar: AppBar(
        backgroundColor: backcolor,
        leading: Padding(
          padding: const EdgeInsets.only(left: 5,top: 5),
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: backcolor,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: gray),
            ),
            child: Icon(
              Icons.location_on_outlined,
              color: Colors.white,
              size: 27,
            ),
          ),
        ),
        title: Column(
          children: [
            Text(
              "Dubai Airport",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1,
              ),
            ),
            Text(
              "Jan 13 2025 - Jan 18 2025",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: gray),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height * .30,
                width:  size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20,),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15,top: 15),
                                child: Image.asset("assets/teslaBlack.png",width: 30,height: 30,),
                              ),
                              Gap(10),
                              Row(
                                children: [
                                  Text("Tesla",style: TextStyle(
                                    color: Colors.black,fontSize: 18,
                                  ),),
                                  Gap(5),
                                  Text("Model",style: TextStyle(
                                    color: Colors.black,fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                ],
                              ),
                              Gap(10),
                              Text("S",style: TextStyle(
                                color: Colors.black,fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),),
                            ],
                          ),
                        ),
                        Image.asset("assets/TeslaModelS.png")
                      ],
                    )
                  ],
                ),
              ),Gap(10),
            ],
          ),
        ),
      ),
    );
  }
}
