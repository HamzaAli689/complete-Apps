import 'package:daraz_ui/slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'any_3/3_items.dart';
import 'any_3/items_Container.dart';
import 'categories/category.dart';
import 'categories/category_container.dart';
import 'flash_sale/flash_sale.dart';
import 'flash_sale/item_container.dart';
import 'location.dart';

class Dashboard_ui extends StatelessWidget {
  const Dashboard_ui({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Row(
            children: [
              Column(
                children: [
                  Icon(
                    Icons.qr_code_scanner,
                    color: Colors.black,
                  ),
                  Text(
                    "Scan",
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 30,
                width: MediaQuery.of(context).size.width / 1.6,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 12
                    ),
                    hintText: "search....",
                    suffixIcon: const Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    contentPadding: EdgeInsets.all(10),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const Column(
                children: [
                  Icon(
                    Icons.currency_bitcoin,
                    color: Colors.black,
                  ),
                  Text(
                    "Coin",
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              const Column(
                children: [
                  Icon(
                    Icons.account_balance_wallet_outlined,
                    color: Colors.black,
                  ),
                  Text(
                    "Wallet",
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(color: Colors.amberAccent),
                      child: ImageSlider()), //Slider Container
                  const Location_Container(),
                ],
              ),
              const SizedBox(
                height: 2,
              ),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(color: Colors.transparent),
                child: Image.asset("assets/banner.jpeg"),
              ),
              SizedBox(height: 5,),
              Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: const Column(
                  children: [
                    flash_sale_container(),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            item_container(
                              text: '2,678',
                              first_price: '3,000',
                              img_path: 'assets/s1.jfif',
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            item_container(
                              text: '3,678',
                              first_price: '4,000',
                              img_path: 'assets/s2.jfif',
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            item_container(
                              text: '2,678',
                              first_price: '3,000',
                              img_path: 'assets/s3.jfif',
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            item_container(
                              text: '3,678',
                              first_price: '4,000',
                              img_path: 'assets/s4.jfif',
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            item_container(
                              text: '2,678',
                              first_price: '3,000',
                              img_path: 'assets/s5.jfif',
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            item_container(
                              text: '3,678',
                              first_price: '4,000',
                              img_path: 'assets/t1.jfif',
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            item_container(
                              text: '2,678',
                              first_price: '3,000',
                              img_path: 'assets/t2.jfif',
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            item_container(
                              text: '3,678',
                              first_price: '4,000',
                              img_path: 'assets/t3.jfif',
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ), //Flash Sale Container
              Container(
                height: 230,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: const Column(
                  children: [
                    Three_items_container(),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            items3_container(
                              text: '2,678',
                              first_price: 'Rs 3,000',
                              imgPath: 'assets/t1.jfif',
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            items3_container(
                              text: '3,678',
                              first_price: 'Rs 4,000',
                              imgPath: 'assets/t2.jfif',
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            items3_container(
                              text: '2,678',
                              first_price: 'Rs 3,000',
                              imgPath: 'assets/t3.jfif',
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            items3_container(
                              text: '3,678',
                              first_price: 'Rs 4,000',
                              imgPath: 'assets/t4.jfif',
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            items3_container(
                              text: '2,678',
                              first_price: 'Rs 3,000',
                              imgPath: 'assets/t5.jfif',
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            items3_container(
                              text: '3,678',
                              first_price: 'Rs 4,000',
                              imgPath: 'assets/s1.jfif',
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            items3_container(
                              text: '2,678',
                              first_price: 'Rs 3,000',
                              imgPath: 'assets/s3.jfif',
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            items3_container(
                              text: '3,678',
                              first_price: 'Rs 4,000',
                              imgPath: 'assets/s4.jfif',
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ), //Any Three Sale Container
              SizedBox(
                height: 10,
              ),
              Container(
                height: 382,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.white),
                child: const Column(
                  children: [
                    CategoryContainer(),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: EdgeInsets.only(top: 2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Catagories_container(
                              title1: 'Headphones',
                              title2: 'Fashion',
                              imgPath1: 'assets/t3.jfif',
                              imgPath2: 'assets/s1.jfif',
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Catagories_container(
                              title1: 'Mobile Cover',
                              title2: 'Degital Clock',
                              imgPath1: 'assets/t1.jfif',
                              imgPath2: 'assets/s5.jfif',
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Catagories_container(
                              title1: 'Game Remote',
                              title2: 'Laptop Stand',
                              imgPath1: 'assets/t2.jfif',
                              imgPath2: 'assets/s4.jfif',
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Catagories_container(
                              title1: 'Digital Clock',
                              title2: 'Soft Bed',
                              imgPath1: 'assets/t4.jfif',
                              imgPath2: 'assets/s3.jfif',
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Catagories_container(
                              title1: 'Iphone Kit',
                              title2: 'Fashion',
                              imgPath1: 'assets/t5.jfif',
                              imgPath2: 'assets/s1.jfif',
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Catagories_container(
                              title1: 'Headphones',
                              title2: 'Car',
                              imgPath1: 'assets/t3.jfif',
                              imgPath2: 'assets/f3.jfif',
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),//Catagory
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
