import 'package:flutter/material.dart';
import 'package:solarsysinc/colors.dart';

import 'data.dart';

class DetailPage extends StatelessWidget {
  final PlanetInfo planetInfo;
  const DetailPage({Key? key, required this.planetInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 300,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      planetInfo.name,
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 54,
                          color: primaryTextColor,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Solar System",
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 24,
                          color: primaryTextColor,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Divider(
                      color: Colors.black26,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      planetInfo.description,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: contentTextColor,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Divider(
                      color: Colors.black38,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      height: 200,
                      child: ListView.builder(
                        itemCount: planetInfo.images.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Card(
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24)),
                            child: AspectRatio(
                                aspectRatio: 1,
                                child: Image.network(
                                  planetInfo.images[index],
                                  fit: BoxFit.cover,
                                )),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              right: -64,
              child: Image.asset(planetInfo.iconImage),
            ),
            Positioned(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  planetInfo.position.toString(),
                  style: TextStyle(
                      fontFamily: 'PoiretOne',
                      fontSize: 250,
                      color: primaryTextColor.withOpacity(0.6),
                      fontWeight: FontWeight.w900),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
