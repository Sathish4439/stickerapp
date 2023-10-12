// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stickershop/model/cart_tile.dart';

class Cart_page extends StatelessWidget {
  const Cart_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_new)),
          foregroundColor: Colors.grey[900],
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Consumer<Cart_model>(builder: (context, value, child) {
          return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    "My Cart",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                ),
                Expanded(
                    child: ListView.builder(
                        itemCount: value.cartitems.length,
                        padding: const EdgeInsets.all(10),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(10)),
                              child: ListTile(
                                leading: Image.asset(
                                  value.cartitems[index][2],
                                ),
                                title: Text(
                                  value.cartitems[index][0],
                                  style: TextStyle(color: Colors.black),
                                ),
                                subtitle: Text(
                                  '\$' + value.cartitems[index][1],
                                  style: TextStyle(color: Colors.black),
                                ),
                                trailing: IconButton(
                                    onPressed: () => Provider.of<Cart_model>(
                                            context,
                                            listen: false)
                                        .removeItemFromcart(index),
                                    icon: Icon(Icons.cancel)),
                              ),
                            ),
                          );
                        })),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(25),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Total Price ",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  value.CalculateItems(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            )),
                        SizedBox(
                          width: 160,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Pay Now",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 15,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ]);
        }));
  }
}
