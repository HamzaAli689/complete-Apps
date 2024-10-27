import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'details.dart';

class MyAbout extends StatefulWidget {
  const MyAbout({Key? key}) : super(key: key);

  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('About'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("images/nn1.png"),backgroundColor: Colors.deepPurpleAccent,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Hello I am',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),
            ),
            Text(
              'Hamza ALi',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              'Android App Developer',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'About:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("""
Hamza Ali is a skilled app developer specializing in Flutter. With a keen eye for detail and a passion for creating exceptional user experiences, he has developed a range of successful apps. As a 6th semester BSCS student, he combines his academic knowledge with practical experience to create high-quality, responsive apps that meet the needs of his clients. Hamza is a motivated self-starter who stays up-to-date with the latest trends and techniques in the industry. He is committed to delivering exceptional results and takes pride in producing apps that exceed expectations.""",

                style: TextStyle(fontSize: 16,color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Qualification:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),
            ),
            SizedBox(height: 20),
            Text(
              'BS Computer Science(6th semester) and Flutter Developer',
              style: TextStyle(fontSize: 16,color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Hire Me',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          backgroundColor: Colors.blue),

                    ))),
            SizedBox(height: 20),
            SizedBox(
                child: ElevatedButton(
                    onPressed: () {Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SocialMediaScreen()),
                    );},
                    child: Text(
                      'Contact us',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          backgroundColor: Colors.blueAccent),

                    ))),

          ],
        ),
      ),
    );
  }
}