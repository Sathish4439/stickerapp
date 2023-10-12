import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stickershop/model/cart_tile.dart';
import 'package:stickershop/pages/homepage.dart';
import 'package:stickershop/pages/intropage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Cart_model(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const Intropage(),
          routes: {
            '/homepage': (context) => const Homepage(),
           
          },
        ));
  }
}
