import 'package:carousel_slider/carousel_slider.dart';
import 'package:event_creator_app/Tabbar_Page/Tab1.dart';
import 'package:event_creator_app/Tabbar_Page/Tab2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1),
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TabBar(
                                labelColor: Colors.black,
                                unselectedLabelColor: Colors.black,
                                indicatorColor: Colors.white,
                                indicatorWeight: 2,
                                indicator: BoxDecoration(
                                    color: Colors.yellow,
                                    borderRadius: BorderRadius.circular(5)),
                                controller: tabController,
                                tabs: [
                                  Tab(
                                    text: 'Your Event',
                                  ),
                                  Tab(
                                    text: 'Car Rental',
                                  ),
                                ]),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        child: TabBarView(
                      controller: tabController,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 35, top: 0.5),
                          child: Tab1(),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 173, top: 0.5),
                          child: Tab2(),
                        ),
                      ],
                    ))
                  ],
                ),
              ),
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
                    "LOREM IPSUM DOLOR",
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
              height: 65,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 67),
              child: Row(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/sofitel_maadi_hotel_0.jpg',
                          fit: BoxFit.cover,
                          width: 280,
                          height: 200,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 25, horizontal: 33),
                          color: Colors.white,
                          child: Text(
                            'PROIN GRAVIDA NIBHVEL\nLOREM QUIS BIND',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 6.5, horizontal: 11),
                              color: Colors.white,
                              child: Icon(
                                Icons.favorite,
                                size: 30.0,
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 25),
                              color: Colors.white,
                              child: Text(
                                'Book Now',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            SizedBox(
                              width: 1,
                            ),
                            Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 9.5, horizontal: 33),
                                color: Colors.white,
                                child: Icon(Icons.edit))
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 67),
              child: Row(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/sofitel_maadi_hotel_0.jpg',
                          fit: BoxFit.cover,
                          width: 280,
                          height: 200,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 25, horizontal: 33),
                          color: Colors.white,
                          child: Text(
                            'PROIN GRAVIDA NIBHVEL\nLOREM QUIS BIND',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 6.5, horizontal: 11),
                              color: Colors.white,
                              child: Icon(
                                Icons.favorite,
                                size: 30.0,
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 25),
                              color: Colors.white,
                              child: Text(
                                'Book Now',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            SizedBox(
                              width: 1,
                            ),
                            Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 9.5, horizontal: 33),
                                color: Colors.white,
                                child: Icon(Icons.edit))
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
