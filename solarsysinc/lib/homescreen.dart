import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:solarsysinc/colors.dart';

import 'data.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gradientEndColor,
      body: Container(
        child: SafeArea(
            child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Explore",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 44,
                            fontFamily: 'Roboto'),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              height: 500,
              // color: Colors.blue,
              child: Swiper(
                itemCount: planets.length,
                itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                layout: SwiperLayout.STACK,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 100,
                          ),
                          Card(
                            color: Colors.white,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 100,
                                ),
                                Text(
                                  planets[index].name,
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 44,
                                      color: const Color(0xff47455f),
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  );
                },
              ),
            )
          ],
        )),
      ),
    );
  }
}
