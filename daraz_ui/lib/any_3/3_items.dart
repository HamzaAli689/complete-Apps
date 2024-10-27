import 'package:flutter/material.dart';

class Three_items_container extends StatelessWidget {
  const Three_items_container({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.amber[300],
          borderRadius: BorderRadius.circular(5)
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
                  Row(
                    children: [
                      Icon(Icons.shopping_cart_sharp,color: Colors.red,),
                      Text("Any 3 from Rs. 480",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  Text("Free Delivery                         ",
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.red,
                      fontWeight: FontWeight.bold
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
                  child: Center(
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
