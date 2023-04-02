import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OurOffers extends StatelessWidget {
  const OurOffers({Key? key}) : super(key: key);

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
        child: Column(children: [
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
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 400,
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Our Events",
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/hall8.jpeg',
                  fit: BoxFit.cover,
                  width: 380,
                  height: 300,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 70, horizontal: 73),
                  color: Colors.white,
                  child: Text(
                    'PROIN GRAVIDA NIBHVEL\nLOREM QUIS BIND',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 7, right: 3, bottom: 5),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.cyan,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'THIS EVENT PLACE',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.blue),
                                    padding: MaterialStateProperty.all(
                                        EdgeInsets.symmetric(
                                            horizontal: 22, vertical: 22))),
                                child: Text(
                                  'Book Now',
                                  style: TextStyle(
                                    fontSize: 26,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/hall9.jpeg',
                  fit: BoxFit.cover,
                  width: 380,
                  height: 300,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 70, horizontal: 73),
                  color: Colors.white,
                  child: Text(
                    'PROIN GRAVIDA NIBHVEL\nLOREM QUIS BIND',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 7, right: 3, bottom: 5),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.cyan,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'THIS EVENT PLACE',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.blue),
                                    padding: MaterialStateProperty.all(
                                        EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 20))),
                                child: Text(
                                  'Book Now',
                                  style: TextStyle(
                                    fontSize: 26,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 45,
          ),
          SizedBox(
            width: 400,
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "SPECIAL PACKAGES",
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 45,
          ),
          Container(
              child: Column(children: [
            Image.asset(
              'assets/images/hall11.jpeg',
              fit: BoxFit.cover,
              width: 350,
              height: 250,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Text(
                        'PROIN GRAVIDA NIBHVEL\n LOREM QUIS BIND',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 45, right: 30),
                        child: Divider(
                          thickness: 1,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 185),
                        child: Image.asset('assets/images/rating.png'),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 130),
                        child: Text(
                          '28 March 2084',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  )),
            ),
            ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed))
                          return Colors.orange; //<-- SEE HERE
                        return null; // Defer to the widget's default.
                      },
                    ),
                    backgroundColor: MaterialStateProperty.all(Colors.grey),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 112, vertical: 30))),
                child: Text(
                  'BOOK NOW',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                )),
          ])),
          SizedBox(
            height: 25,
          ),
          Container(
              child: Column(children: [
            Image.asset(
              'assets/images/hall12.jpeg',
              fit: BoxFit.cover,
              width: 350,
              height: 250,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Text(
                        'PROIN GRAVIDA NIBHVEL\n LOREM QUIS BIND',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 45, right: 30),
                        child: Divider(
                          thickness: 1,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 185),
                        child: Image.asset('assets/images/rating.png'),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 130),
                        child: Text(
                          '28 March 2084',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  )),
            ),
            ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed))
                          return Colors.orange; //<-- SEE HERE
                        return null; // Defer to the widget's default.
                      },
                    ),
                    backgroundColor: MaterialStateProperty.all(Colors.grey),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 112, vertical: 30))),
                child: Text(
                  'BOOK NOW',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                )),
          ])),
        ]),
      ),
    );
  }
}
