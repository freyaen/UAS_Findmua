import 'package:flutter/material.dart';
import 'check_out_mua.dart'; // Adjust import as needed
import 'package:findmua/bookingmua/Provider/cart_provider_mua.dart'; // Adjust import as needed
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  double totalPrice = 0.0;

  @override
  void initState() {
    super.initState();
    _calculateTotalPrice();
  }

  void _calculateTotalPrice() {
    final provider = Provider.of<CartProviderMua>(context, listen: false);
    double price = 0.0;
    for (var item in provider.cart) {
      price += (item.price * 16486) * item.quantity;
    }
    setState(() {
      totalPrice = price;
    });
  }

  // Function to handle product quantity change buttons
  Widget productQuantity(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (icon == Icons.add) {
            Provider.of<CartProviderMua>(context, listen: false)
                .incrementQtn(index);
          } else {
            Provider.of<CartProviderMua>(context, listen: false)
                .decrementQtn(index);
          }
          _calculateTotalPrice();
        });
      },
      child: Icon(
        icon,
        size: 20,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CartProviderMua>(context);
    final finalList = provider.cart;

    return Scaffold(
      // for total and check out
      backgroundColor: Color.fromARGB(225, 152, 180, 255),

      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.all(15),
                    ),
                    icon: const Icon(Icons.arrow_back_ios),
                  ),
                  const Text(
                    "My Cart",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: finalList.length,
                itemBuilder: (context, index) {
                  final cartItems = finalList[index];
                  return Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Container(
                                height: 100,
                                width: 90,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(225, 152, 180, 255),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding: const EdgeInsets.all(10),
                                child: Image.asset(
                                  cartItems
                                      .image, // Make sure 'image' is a String path to asset
                                ),
                              ),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    cartItems
                                        .title, // Ensure 'title' is a String
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    cartItems
                                        .category, // Ensure 'category' is a String
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    "Rp. ${cartItems.price * 16486}", // Ensure 'price' is a String or double/num
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 35,
                        right: 35,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  finalList[index].quantity = 1;
                                  finalList.removeAt(index);
                                  _calculateTotalPrice();
                                });
                              },
                              icon: const Icon(
                                Icons.delete,
                                color: Colors.red,
                                size: 20,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(225, 152, 180, 255),
                                border: Border.all(
                                  color: Colors.grey.shade200,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(width: 10),
                                  productQuantity(Icons.add, index),
                                  const SizedBox(width: 10),
                                  Text(
                                    cartItems.quantity
                                        .toString(), // Ensure 'quantity' is an int
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  productQuantity(Icons.remove, index),
                                  const SizedBox(width: 10),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
            CheckOutBox(
              finalList: finalList,
              totalPrice: totalPrice,
            ),
          ],
        ),
      ),
    );
  }
}
