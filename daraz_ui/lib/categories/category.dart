import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5)
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 30),
                    child: Text("Categories",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Text("Inspired by your interests",
                    style: TextStyle(
                        fontSize: 11,
                        color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Container(
                  height: 20,
                  width: 90,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.red)
                  ),
                  child: const Center(
                    child: Text("See More >",style: TextStyle(
                        fontSize: 14,
                        color: Colors.red
                    ),),
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}
