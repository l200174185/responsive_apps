import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import 'video_screen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // screen Size
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        child: Stack(
          children: [
            // Make curves for designing
            ClipPath(
              child: Container(
                color: Colors.blue[400],
                height: 140,
                width: screenSize.width,
              ),
              clipper: WaveClipperOne(),
            ),
            ClipPath(
              child: Container(
                color: Colors.blue[600],
                height: 120,
                width: screenSize.width,
              ),
              clipper: WaveClipperTwo(),
            ),
            // Make curves for bottom...
            Positioned(
              child: ClipPath(
                child: Container(
                  color: Colors.blue[400],
                  height: 80,
                  width: screenSize.width,
                ),
                clipper: WaveClipperOne(
                  reverse: true,
                ),
              ),
              bottom: 0,
              left: 0,
            ),
            Positioned(
              child: ClipPath(
                child: Container(
                  color: Colors.blue[400],
                  height: 90,
                  width: screenSize.width,
                ),
                clipper: WaveClipperTwo(reverse: true),
              ),
              bottom: 0,
              left: 0,
            ),
            // Let's Make the Content
            // Lets first make the small screen, less than 580
            screenSize.width < 580
                ? Container(
                    // small screen
                    width: screenSize.width,
                    height: screenSize.height,
                    child: Column(
                      children: [
                        // 1. make the Picture
                        Container(
                          margin: EdgeInsets.only(top: 60),
                          height: 240,
                          child: Image.asset(
                            "assets/web.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(height: 16),
                        // 2. Text
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // Text
                              Text(
                                "Kukuh Adhi",
                                style: TextStyle(
                                  fontSize: screenSize.width < 580 ? 32 : 64,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.lightBlue,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Easy Approach makes it easy for every one to\n"
                                "dessiminate knowledge and making difficult\nproblems easy to solve",
                                style: TextStyle(
                                  letterSpacing: 1.0,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey[600],
                                ),
                              ),
                              SizedBox(height: 16),
                              // Button Videos
                              FlatButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => VideoScreen()));
                                },
                                icon: Icon(Icons.video_collection_rounded),
                                label: Text("See All Videos"),
                                textColor: Colors.white,
                                color: Colors.grey[800],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                : Container(
                    // large screen
                    height: screenSize.height,
                    width: screenSize.width,
                    child: Column(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 64),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Kukuh Adhi",
                                        style: TextStyle(
                                          fontSize:
                                              screenSize.width < 580 ? 32 : 64,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.lightBlue,
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        "Easy Approach makes it easy for every one to"
                                        "dessiminate knowledge and making difficult problems easy to solve",
                                        style: TextStyle(
                                          letterSpacing: 1.0,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                      SizedBox(height: 16),
                                      // Button Videos
                                      FlatButton.icon(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      VideoScreen()));
                                        },
                                        icon: Icon(
                                            Icons.video_collection_rounded),
                                        label: Text("See All Videos"),
                                        textColor: Colors.white,
                                        color: Colors.grey[800],
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(32),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: Image.asset("assets/web.png",
                                      fit: BoxFit.contain),
                                ),
                              ),
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
