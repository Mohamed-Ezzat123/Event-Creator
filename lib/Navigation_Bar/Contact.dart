import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
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
            SizedBox(
              height: 35,
            ),
            SizedBox(
              width: 400,
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.9,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "CONTACT US",
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.9,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Subject',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Message",
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orange),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 135, vertical: 10))),
                child: Text(
                  'Submit Now',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                )),
          ],
        ),
      ),
    );
  }
}
