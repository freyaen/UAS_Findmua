import 'package:flutter/material.dart';
import 'package:findmua/buymakeup/models/product_model.dart';

class ItemsDetails extends StatelessWidget {
  final Product product;

  const ItemsDetails({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(product.imageLink),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        SizedBox(height: 20),
        Text(
          product.name,
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 25,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Rp. ${(double.parse(product.price) * 16486).toStringAsFixed(0)}',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 25,
          ),
        ),
        SizedBox(height: 10),
        Text(
          product.description,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
