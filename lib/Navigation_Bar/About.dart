import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[5],
      appBar: AppBar(
        title:
            const Text('Event Creator', style: TextStyle(color: Colors.amber)),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
                items: [
                  Image.asset('assets/images/hall8.jpeg'),
                  Image.asset('assets/images/hall9.jpeg'),
                  Image.asset('assets/images/hall10.jpeg'),
                ],
                options: CarouselOptions(
                  height: 270,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                )),
            Container(
              child: Row(
                children: [
                  Image.asset('assets/images/index-03.jpg'),
                  Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 70, horizontal: 15),
                      color: Colors.white,
                      child: Text(
                        'Welcome \n To Event',
                        style: TextStyle(fontSize: 20),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 400,
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.6,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "WHO WE ARE",
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.6,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 150, horizontal: 50),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.yellow,
                      radius: 120,
                      child: CircleAvatar(
                        radius: 110,
                        backgroundImage:
                            AssetImage('assets/images/about-4.jpg'),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 95, right: 10, bottom: 50, top: 420),
                      child: Column(
                        children: [
                          Text(
                            'Mohamed  ',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Proin gravida nibhvell aliquet.'
                            '\n Aenean sollicitudin bibum'
                            '\n auctor nisi elit.',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
