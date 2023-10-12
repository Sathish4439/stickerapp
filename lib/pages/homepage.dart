import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:stickershop/component/grocerytailview.dart';
import 'package:stickershop/model/cart_tile.dart';
import 'package:stickershop/pages/cartpage.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const Cart_page();
        })),
        backgroundColor: Colors.black,
        child: Icon(Icons.shopping_bag),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //text
              Text("Good Morning,",
                  style: GoogleFonts.notoKufiArabic(
                    color: Colors.yellow[900],
                    fontSize: 20,
                  )),

              Text(
                "We are providing good quality of stickes with your doorstep deleivery",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[900],
                    fontSize: 20,
                    height: 1.5),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(),

              Text(
                "Available Strickers",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.green[900],
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Consumer<Cart_model>(builder: (context, value, index) {
                  return GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, childAspectRatio: 1 / 1.2),
                      itemCount: value.shopitems.length,
                      itemBuilder: (context, index) {
                        return GroceryItemtail(
                          name: value.shopitems[index][0],
                          price: value.shopitems[index][1],
                          imagepath: value.shopitems[index][2],
                          color: value.shopitems[index][3],
                          onPressed: () {
                            Provider.of<Cart_model>(context, listen: false)
                                .addItemstoCart(index);
                          },
                        );
                      });
                }),
              ),

              //
            ],
          ),
        ),
      ),
    );
  }
}
