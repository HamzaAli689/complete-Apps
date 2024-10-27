import 'package:flutter/material.dart';

import 'dashboard_screen.dart';


class Courses_Screen extends StatelessWidget {
  const Courses_Screen(
      {super.key, required this.title, required this.imagePath, required this.videotitle, required this.subtitle});

  final String title;
  final String subtitle;
  final String videotitle;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications, color: Colors.indigoAccent),
          ),
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard_Screen()));
          },
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    height: 210,
                    width: 4000,
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        Image.asset(imagePath,
                        height: 210,
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right:
                      90),
                      child: Text(videotitle,style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right:
                      90),
                      child: Text("Created by Hamza Ali",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right:
                      90),
                      child: Text("55 Videos",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                      ),),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        children: [
                          SizedBox(width: 100,
                            child: ElevatedButton(style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.indigo,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                            ),
                                onPressed: (){}, child: Text("Videos",style: TextStyle(
                              color: Colors.white,
                                  fontWeight: FontWeight.bold
                            ),)),
                          ),
                          SizedBox(
                            width: 50,
                          ),
        
                          SizedBox(width: 120,
                            child: ElevatedButton(style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.indigo.shade300,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                            ),
                                onPressed: (){}, child: Text("Discription",style: TextStyle(
                                    color: Colors.white,fontWeight: FontWeight.bold
                                ),)),
                          ),
        
                        ],
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    ListTile(
                      leading: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(100)
                        ),
                        child: Icon(Icons.play_arrow,color: Colors.white,
                        size: 33,
                        ),
                      ),
                      title: Text(subtitle),
                      subtitle: Text("20 min 50 sec"),
        
                    ),
                    ListTile(
                      leading: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.indigo.shade300,
                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: Icon(Icons.play_arrow,color: Colors.white,
                          size: 33,
                        ),
                      ),
                      title: Text(subtitle),
                      subtitle: Text("20 min 50 sec"),
        
                    ),
                    ListTile(
                      leading: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.indigo.shade300,
                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: Icon(Icons.play_arrow,color: Colors.white,
                          size: 33,
                        ),
                      ),
                      title: Text(subtitle),
                      subtitle: Text("20 min 50 sec"),
        
                    ),
                    ListTile(
                      leading: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.indigo.shade300,
                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: Icon(Icons.play_arrow,color: Colors.white,
                          size: 33,
                        ),
                      ),
                      title: Text(subtitle),
                      subtitle: Text("20 min 50 sec"),
        
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
