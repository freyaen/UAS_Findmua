import 'package:flutter/material.dart';
import 'package:findmua/buymakeup/screens/Cart/cart_screen.dart';
import 'package:findmua/buymakeup/Favorite/favorite.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    this.onCartPressed,
  }) : super(key: key);

  final VoidCallback? onCartPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: Color.fromARGB(225, 152, 180, 255),
            padding: const EdgeInsets.all(15),
          ),
          onPressed: () {
            Navigator.pop(context); // Logic for the back button
          },
          icon: const Icon(Icons.arrow_back),
        ),
        Row(
          children: [
            IconButton(
              style: IconButton.styleFrom(
                backgroundColor: Color.fromARGB(225, 152, 180, 255),
                padding: const EdgeInsets.all(15),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Favorite(),
                  ),
                );
              },
              iconSize: 30,
              icon: const Icon(Icons.favorite_border),
            ),
            IconButton(
              style: IconButton.styleFrom(
                backgroundColor: Color.fromARGB(225, 152, 180, 255),
                padding: const EdgeInsets.all(15),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CartScreen(),
                  ),
                );
              },
              iconSize: 30,
              icon: const Icon(Icons.shopping_cart_outlined),
            ),
          ],
        ),
      ],
    );
  }
}
