import 'package:flutter/material.dart';
import 'package:findmua/bookingmua/screens/Cart/cart_screen_mua.dart';
import 'package:findmua/bookingmua/Favorite/favoritemua.dart';

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
            Navigator.pop(context);
          },
          iconSize: 30,
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

class ImageSlider extends StatelessWidget {
  final Function(int) onChange;
  final int currentSlide;

  const ImageSlider({
    Key? key,
    required this.onChange,
    required this.currentSlide,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 220,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: PageView(
              scrollDirection: Axis.horizontal,
              onPageChanged: onChange,
              physics: const ClampingScrollPhysics(),
              children: [
                Image.asset(
                  "assets/images/slider.jpg",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/images/image1.png",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/images/slider3.png",
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
        Positioned.fill(
          bottom: 10,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: currentSlide == index ? 15 : 8,
                  height: 8,
                  margin: const EdgeInsets.only(right: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: currentSlide == index ? Colors.black : Colors.transparent,
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
