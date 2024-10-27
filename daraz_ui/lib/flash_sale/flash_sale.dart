import 'package:flutter/material.dart';

class flash_sale_container extends StatelessWidget {
  const flash_sale_container({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Text("Flash Sale",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("     Get it before they're gone!",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Container(
                  height: 25,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.red)
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Row(
                      children: [
                        Text("Ends in",style: TextStyle(
                            fontSize: 14,
                            color: Colors.red
                        ),),
                        SizedBox(
                          width: 10,
                        ),
                        Text("05:55:37 >",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.red
                          ),)
                      ],
                    ),
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}
