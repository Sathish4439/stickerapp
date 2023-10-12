import 'package:flutter/material.dart';

import 'package:stickershop/theme/color.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primarycolor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //image
          Padding(
            padding: const EdgeInsets.all(80),
            child: Image.asset("lib/image/intropage.png"),
          ),

          //title
          const Padding(
            padding: EdgeInsets.only(left: 30, bottom: 20, right: 25),
            child: Text(
              "We are providing animated sticker in your doorstep",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          //subtitile
          const Text(
            "deliver at anytime",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
          ),

          //button
          Padding(
            padding: const EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/homepage");
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(10)),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Get Started",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
