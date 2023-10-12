// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class GroceryItemtail extends StatelessWidget {
  final String name;
  final String price;
  final String imagepath;
  final color;
  void Function()? onPressed;
  GroceryItemtail(
      {super.key,
      required this.name,
      required this.price,
      required this.imagepath,
      required this.color,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: color[300], borderRadius: BorderRadius.circular(24)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //image
            Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                imagepath,
                height: 80,
              ),
            ),

            //name
            Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),

            //price+button
            MaterialButton(
              color: color[900],
              onPressed: onPressed,
              child: Text(
                'Rs.' + price,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
