import 'package:flutter/material.dart';
import '../widget/courses_container.dart';
import '../widget/grideicons.dart';
import 'courses.dart';

class Dashboard_Screen extends StatefulWidget {
  const Dashboard_Screen({super.key});

  @override
  State<Dashboard_Screen> createState() => _Dashboard_ScreenState();
}

class _Dashboard_ScreenState extends State<Dashboard_Screen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications, color: Colors.white),
            ),
          ],
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.grid_view_sharp, color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
              children: [
            Container(
              height: 150,
              width: 500,
              decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Text(
                      "Hi, Programmers",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        hintText: "Search Here ......",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 240,
              width: 500,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      GrideContainer(
                        title: 'Category',
                        iconcolor: Colors.orange,
                        icon: Icons.category,
                      ),
                      SizedBox(
                        width: 52,
                      ),
                      GrideContainer(
                        title: 'Classes',
                        iconcolor: Colors.green,
                        icon: Icons.video_collection,
                      ),
                      SizedBox(
                        width: 44,
                      ),
                      GrideContainer(
                        title: 'Free Courses',
                        iconcolor: Colors.blue,
                        icon: Icons.assignment,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 26,
                      ),
                      GrideContainer(
                        title: 'Book Store',
                        iconcolor: Colors.red,
                        icon: Icons.store,
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      GrideContainer(
                        title: 'Live Course',
                        iconcolor: Colors.purple,
                        icon: Icons.play_circle,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      GrideContainer(
                        title: 'Leaderboard',
                        iconcolor: Colors.brown,
                        icon: Icons.leaderboard,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Courses",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: 170,
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Courses_Container(
                        title: 'Flutter',
                        imagePath: 'images/flutter.png',
                        onpress: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Courses_Screen(
                                        title: 'Flutter',
                                        imagePath: 'images/flutter.png', videotitle: 'Flutter Complete Course', subtitle: 'Introduction to Flutter',
                                      )));
                        },
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Courses_Container(
                        title: 'Python',
                        imagePath: 'images/python.png',
                        onpress: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Courses_Screen(
                                    title: 'Python',
                                    imagePath: 'images/python.png', videotitle: 'Python Complete Course', subtitle: 'Inroduction to Python',
                                  )));
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Courses_Container(
                        title: 'C#',
                        imagePath: 'images/c#.png',
                        onpress: () {Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Courses_Screen(
                                  title: 'C#',
                                  imagePath: 'images/c#.png', videotitle: 'C# Complete Course', subtitle: 'Inroduction to C#',
                                )));},
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Courses_Container(
                        title: 'React.JS',
                        imagePath: 'images/react_native.png',
                        onpress: () {Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Courses_Screen(
                                  title: 'React.JS',
                                  imagePath: 'images/react_native.png', videotitle: 'React.JS Complete Course', subtitle: 'Inroduction to Reast.JS',
                                )));},
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Courses_Container(
                        title: 'C++',
                        imagePath: 'images/c++.png',
                        onpress: () {Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Courses_Screen(
                                  title: 'C++',
                                  imagePath: 'images/c++.png', videotitle: 'C++ Complete Course', subtitle: 'Inroduction to C++',
                                )));},
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Courses_Container(
                        title: 'HTML',
                        imagePath: 'images/html.png',
                        onpress: () {Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Courses_Screen(
                                  title: 'HTML',
                                  imagePath: 'images/html.png', videotitle: 'HTML Complete Course', subtitle: 'Inroduction to HTML',
                                )));},
                      ),
                    ],
                  ),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
