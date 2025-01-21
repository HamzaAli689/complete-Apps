import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import '../constant/colors.dart';
import '../widgets/overviewContainer.dart';
import 'SelectTheCar.dart';


class CardetailsScreens extends StatelessWidget {
   final String imagepath;
   final String model;
   final String rent;
   final String speed;
  const CardetailsScreens({
    super.key, required this.imagepath, required this.model, required this.rent, required this.speed,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backcolor,
      appBar: AppBar(
        backgroundColor: backcolor,
        leading: Container(
            child: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,
              size: 20,),
              onPressed: () {
              Get.to(() => SelectTheCar());
              },
        )),
        title: Text(
          "Car Details",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 1,
          ),
        ),
        centerTitle: true,
        actions: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: backcolor,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: gray),
            ),
            child: Icon(
              Icons.favorite_border_outlined,
              color: Colors.white,
              size: 20,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  height: size.height * .40,
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(300),
                    color: whiteSmoke,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      imagepath,
                    ),
                  )),
            ),
            Container(
              height: size.height * .83,
              width: size.width,
              decoration: BoxDecoration(
                  color: fillcolor,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50))),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Tesla",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 20,
                            letterSpacing: 1,
                          ),
                        ),
                        Gap(7),
                        Text(
                          model,
                          style: TextStyle(
                            color: whiteSmoke,
                            fontSize: 20,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Gap(20),
                    Text(
                      "The Tesla Model S is a luxury all-electric sedan produced by Tesla, Inc. since 2012. It is one of Tesla’s flagship vehicles, known for its high performance, cutting-edge  technology, and long-range capabilities.",
                      style: TextStyle(
                        color: gray,
                        fontSize: 13,
                        letterSpacing: 0,
                      ),
                    ),
                    Gap(20),
                    Text(
                      "Overview",
                      style: TextStyle(
                        color: gray,
                        fontSize: 17,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Gap(5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Overviewcontainer(icon: Icons.speed, title: 'Top Speed', Subtitle: speed, unit: 'mph',),Gap(8),
                        Overviewcontainer(icon: Icons.event_seat, title: 'Capacity', Subtitle: '5', unit: 'Seats',),Gap(8),
                        Overviewcontainer(icon: Icons.charging_station, title: 'Charging', Subtitle: '240', unit: 'Volts',),Gap(8),
                      ],
                    ),
                    Gap(35),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Rent Price",
                          style: TextStyle(
                            color: gray,
                            fontSize: 14,
                            letterSpacing: 1,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              rent,
                              style: TextStyle(
                                color: whiteSmoke,
                                fontSize: 20,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "/Days",
                              style: TextStyle(
                                color: gray,
                                fontSize: 10,
                                letterSpacing: 1,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Gap(35),
                    Center(
                      child: InkWell(
                        onTap: () {
                          // Get.to(() => SelectTheCar(),
                          //     transition: Transition.rightToLeftWithFade,
                          //     duration: Duration(seconds: 1));
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * .08,
                          width: MediaQuery.of(context).size.width * .70,
                          decoration: BoxDecoration(
                            color: green,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Text(
                              "Book Now",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                letterSpacing: 1,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
