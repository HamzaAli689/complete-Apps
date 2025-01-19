import 'package:flutter/material.dart';


class CarShowcase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Stack(
          alignment: Alignment.center,
          children: [

            // Circular Container (Base Stand)
            Container(
              width: MediaQuery.of(context).size.width * .75,
              height: 100, // Slightly elliptical
              decoration: BoxDecoration(
                color: Colors.grey[900],
                    
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 20,
                  ),
                ],
              ),
            ),
            // Car Image
            // Image.asset(
            //   'assets/images/3.png', // Replace with your image name
            //   width: 200,
            //   fit: BoxFit.cover,
            // ),
            // Navigation Arrows
            Positioned(
              bottom: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Left Arrow
                  IconButton(
                    icon: Icon(Icons.arrow_left, color: Colors.white, size: 30),
                    onPressed: () {
                      // Add left arrow functionality
                    },
                  ),
                  SizedBox(width: 10),
                  // Right Arrow
                  IconButton(
                    icon: Icon(Icons.arrow_right, color: Colors.white, size: 30),
                    onPressed: () {
                      // Add right arrow functionality
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}
