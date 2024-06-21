import 'package:flutter/material.dart';
import 'package:findmua/buymakeup/models/product_model.dart';

class PurchaseDetailBottomSheet extends StatefulWidget {
  final Product product;

  const PurchaseDetailBottomSheet({Key? key, required this.product})
      : super(key: key);

  @override
  _PurchaseDetailBottomSheetState createState() =>
      _PurchaseDetailBottomSheetState();
}

class _PurchaseDetailBottomSheetState extends State<PurchaseDetailBottomSheet> {
  String? selectedShipping;
  double shippingCost = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Alamat Pengiriman',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              // Text field for address input
              TextField(
                decoration: InputDecoration(
                  hintText: 'Masukkan alamat pengiriman',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Detail Produk',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              // Product details
              Text(
                'Nama Produk: ${widget.product.name}',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'Harga: Rp. ${widget.product.price}',
                style: TextStyle(fontSize: 16),
              ),
              // Shipping options
              SizedBox(height: 20),
              Text(
                'Pilihan Pengiriman',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              // Shipping options here
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      RadioListTile(
                        title: Text('JNT'),
                        value: 'JNT',
                        groupValue: selectedShipping,
                        onChanged: (value) {
                          setState(() {
                            selectedShipping = value as String?;
                            // Handle JNT selection
                            // Set shipping cost based on selected option
                            shippingCost = 10.0; // Set your shipping cost here
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text('JNE'),
                        value: 'JNE',
                        groupValue: selectedShipping,
                        onChanged: (value) {
                          setState(() {
                            selectedShipping = value as String?;
                            // Handle JNE selection
                            // Set shipping cost based on selected option
                            shippingCost = 8.0; // Set your shipping cost here
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text('Ninja Express'),
                        value: 'Ninja Express',
                        groupValue: selectedShipping,
                        onChanged: (value) {
                          setState(() {
                            selectedShipping = value as String?;
                            // Handle Ninja Express selection
                            // Set shipping cost based on selected option
                            shippingCost = 12.0; // Set your shipping cost here
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text('Anteraja'),
                        value: 'Anteraja',
                        groupValue: selectedShipping,
                        onChanged: (value) {
                          setState(() {
                            selectedShipping = value as String?;
                            // Handle Anteraja selection
                            // Set shipping cost based on selected option
                            shippingCost = 15.0; // Set your shipping cost here
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text('TIKI'),
                        value: 'TIKI',
                        groupValue: selectedShipping,
                        onChanged: (value) {
                          setState(() {
                            selectedShipping = value as String?;
                            // Handle TIKI selection
                            // Set shipping cost based on selected option
                            shippingCost = 9.0; // Set your shipping cost here
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Shipping cost
              Text(
                'Biaya Pengiriman: Rp. ${shippingCost.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 40),
              // Payment details
              Text(
                'Rincian Pembayaran',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              // Payment details summary here
              SizedBox(height: 20),
              // Order button
              ElevatedButton(
                onPressed: () {
                  // Handle order button press
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  'Buat Pesanan',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
