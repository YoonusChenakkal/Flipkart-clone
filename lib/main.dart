import 'package:carousel_slider/carousel_slider.dart';
import 'package:flipkart/card1.dart';
import 'package:flipkart/card2.dart';
import 'package:flipkart/circle%20image.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homePage(),
    );
  }
}

class homePage extends StatelessWidget {
  homePage({super.key});
  String flipkart = 'assets/Flipkart.png';
  String scan = 'assets/scan.jpg';
  String beauty = 'assets/beauty.png';
  String fastion = 'assets/fastion.jpeg';
  String gadgets = 'assets/gadgets.png';
  String grocery = 'assets/grocery.png';
  String home = 'assets/home.jpeg';
  String mobiles = 'assets/mobiles.png';
  String tv = 'assets/tv.jpeg';
  String mens = 'assets/mens.jpeg';
  String boat = 'assets/boat.png';
  String maaza = 'assets/maaza.png';
  String xiaomi = 'assets/Xiaomi14.jpeg';
  String wireless = 'assets/wireless.png';
  String printer = 'assets/printer.png';
  String bag = 'assets/bag.png';
  String camera = 'assets/camera.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 58,
        child: BottomNavigationBar(
            showUnselectedLabels: true,
            selectedItemColor: Colors.blueAccent,
            unselectedItemColor: Color.fromARGB(255, 90, 90, 90),
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.category_outlined), label: 'Categories'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications_none), label: 'Notification'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_outlined), label: 'Account'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
            ]),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 45,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 62, 128, 243),
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 22,
                              child: Image.asset(
                                flipkart,
                                fit: BoxFit.fill,
                              )),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Flipkart',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontStyle: FontStyle.italic,
                                fontFamily: 'lexend'),
                          )
                        ]),
                  ),
                  Container(
                    height: 45,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 22,
                              child: Image.asset(
                                flipkart,
                                fit: BoxFit.fill,
                              )),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Grocery',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w900,
                                fontStyle: FontStyle.italic,
                                fontFamily: 'lexend'),
                          )
                        ]),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 45,
                decoration: ShapeDecoration(
                    color: Colors.grey[100],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                child: TextField(
                  style: TextStyle(fontSize: 18),
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 0.0),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 0.0),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    suffixIcon: Row(mainAxisSize: MainAxisSize.min, children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.mic_none,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.grey,
                        ),
                      )
                    ]),
                    contentPadding: EdgeInsets.only(left: 25),
                    hintText: 'mobiles',
                    hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ),
              ),
            ),
            CarouselSlider(
              items: [
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage(fastion), fit: BoxFit.cover)),
                ),
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage(boat), fit: BoxFit.cover)),
                ),
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage(maaza), fit: BoxFit.cover)),
                )
              ],
              options: CarouselOptions(
                  height: 180,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.linear,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 1),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 8),
                  circle_image(scan, 'Scan & Pay'),
                  SizedBox(width: 4),
                  circle_image(fastion, 'Fashion'),
                  SizedBox(width: 4),
                  circle_image(beauty, '''    Beauty 
  Food,Toys.. '''),
                  SizedBox(width: 4),
                  circle_image(grocery, 'Grocery'),
                  SizedBox(width: 4),
                  circle_image(home, 'Home & Furniture'),
                  SizedBox(width: 4),
                  circle_image(mobiles, 'Mobiles'),
                  SizedBox(width: 4),
                  circle_image(gadgets, 'Smart Gadgets'),
                  SizedBox(width: 4),
                  circle_image(tv, 'Tv & Electronics'),
                  SizedBox(width: 4),
                  circle_image(mens, " Men's Footwear"),
                  SizedBox(width: 4),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Divider(
              thickness: 0.2,
            ),
            SizedBox(),
            SizedBox(
              height: 160,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 16,
                  ),
                  card1(xiaomi, 'Xiaomi 14', 'Launch: 7th March'),
                  SizedBox(
                    width: 16,
                  ),
                  card1(maaza, 'Maaza at 1', 'Only For Today'),
                  SizedBox(
                    width: 16,
                  ),
                  card1(boat, 'Biggest Price Drop', 'Just ₹799'),
                  SizedBox(
                    width: 16,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Recently Viewed Stores',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            SizedBox(
              height: 160,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 16,
                  ),
                  card2(camera, 'Security ', 'Cameras'),
                  SizedBox(
                    width: 8,
                  ),
                  card2(bag, 'Travel Bag', ''),
                  SizedBox(
                    width: 8,
                  ),
                  card2(wireless, 'True Wireless ', ''),
                  SizedBox(
                    width: 8,
                  ),
                  card2(printer, 'Multi Funtional ', 'Printers'),
                  SizedBox(
                    width: 8,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Sponsored',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 160,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 16,
                  ),
                  card1(xiaomi, 'Xiaomi 14', 'Launch: 7th March'),
                  SizedBox(
                    width: 16,
                  ),
                  card1(maaza, 'Maaza at 1', 'Only For Today'),
                  SizedBox(
                    width: 16,
                  ),
                  card1(boat, 'Biggest Price Drop', 'Just ₹799'),
                  SizedBox(
                    width: 16,
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
