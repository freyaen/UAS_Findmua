import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:findmua/buymakeup/models/product_model.dart';
import 'package:findmua/buymakeup/screens/Detail/Widget/addto_cart.dart';
import 'package:findmua/buymakeup/screens/Detail/Widget/description.dart';
import 'package:findmua/buymakeup/screens/Detail/Widget/detail_app_bar.dart';
import 'package:findmua/buymakeup/screens/Detail/Widget/items_details.dart';
import 'package:findmua/buymakeup/services/controller.dart';

class DetailScreen extends StatefulWidget {
  final Product product;

  DetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int currentColor = 1;

  late AppController controller;

  @override
  void initState() {
    super.initState();
    controller = Get.put(AppController());
    controller.fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(226, 229, 236, 255),
      floatingActionButton: AddToCart(product: widget.product),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DetailAppBar(product: widget.product),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                ),
                padding: EdgeInsets.fromLTRB(20, 20, 20, 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ItemsDetails(product: widget.product),
                    SizedBox(height: 20),
                    Text(
                      "Color",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: List.generate(
                        widget.product.colors?.length ?? 0, // Added null check
                        (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              currentColor = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: currentColor == index
                                  ? Colors.white
                                  : widget.product.colors![index], // Use ! to assert non-null
                              border: Border.all(
                                color: widget.product.colors![index], // Use ! to assert non-null
                                width: currentColor == index ? 2 : 0,
                              ),
                            ),
                            padding: currentColor == index ? EdgeInsets.all(2) : null,
                            margin: EdgeInsets.only(right: 10),
                            child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    Description(
                      description: widget.product.description,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
