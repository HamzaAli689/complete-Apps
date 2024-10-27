import 'package:flutter/material.dart';
import 'package:profile_app/details.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'myabout.dart';
class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  myRows(num, type) {
    return Row(
      children: [
        Text(num,
            style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold)),
        Container(
            margin: EdgeInsets.only(top: 10.0),
            child: Text(
              type,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ))
      ],
    );
  }

  myCard(icon, tech) {
    return Container(
      width: 105,
      height: 115,
      child: Card(
        margin: EdgeInsets.all(8),
        color: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(icon, color: Colors.white),
          SizedBox(
            height: 10,
          ),

          TextButton(
              onPressed: () {
                SocialMediaScreen();
              },
              child: Text(
                tech,
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ))
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          snap: true,
          snappings: [0.38, 0.7, 1.0],
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: CircleAvatar(
                  maxRadius: 80.0,
                  backgroundImage: AssetImage("images/nn1.png"),
                ),
              ),
            ),

            Text("Hamza Ali",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0)),
            Text("AppDevelpor",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0)),
            SizedBox(height: 5.0,),
            Text("For contact & more Details ",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0)),
            SizedBox(height: 15.0,),

            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyAbout()),
                );
              },
              child: Text("About me",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
            )
          ],
        ),

        //Text("Hamza Ali",style: TextStyle(color: Colors.amberAccent)),

        builder: (context, state) {
          return Container(
              margin: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
              height: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      myRows("82", "Projects"),
                      myRows("65", "Clients"),
                      myRows("91", "Messages")
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Specialized In",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          myCard(Icons.android, "Android"),
                          myCard(Icons.web, "WebSite"),
                          myCard(Icons.apple, "IOS")
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          myCard(Icons.whatshot, "whatsapp"),
                          myCard(Icons.flutter_dash, "Flutter"),
                          myCard(Icons.graphic_eq, "Graphics")
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          myCard(Icons.tiktok, "tiktok"),
                          myCard(Icons.install_desktop, "Desktop"),
                          myCard(Icons.snapchat, "Snapchat")
                        ],
                      )
                    ],
                  )
                ],
              ));
        },
      ),
    );
  }
}
