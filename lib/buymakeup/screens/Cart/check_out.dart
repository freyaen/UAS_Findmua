import 'package:findmua/buymakeup/Home/home_screen.dart';
import 'package:findmua/muahome/mua_home_screen.dart';
import 'package:findmua/muahome/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:findmua/buymakeup/Provider/cart_provider.dart';

class CheckOutBox extends StatefulWidget {
  final double totalPrice;

  const CheckOutBox({Key? key, required this.totalPrice}) : super(key: key);

  @override
  _CheckOutBoxState createState() => _CheckOutBoxState();
}

class _CheckOutBoxState extends State<CheckOutBox> {
  bool isCheckoutClicked = false;
  TextEditingController addressController = TextEditingController();
  String selectedShipping = 'JNE'; // Default shipping method
  String selectedPayment = 'BCA'; // Default payment method

  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    return SingleChildScrollView(
      child: Container(
        height: isCheckoutClicked ? 600 : 300,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
        ),
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: addressController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 15,
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(226, 229, 236, 255),
                  hintText: "Enter Shipping Address",
                  hintStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Shipping:",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Radio(
                    value: 'JNE',
                    groupValue: selectedShipping,
                    onChanged: (value) {
                      setState(() {
                        selectedShipping = value.toString();
                      });
                    },
                  ),
                  const Text('JNE'),
                  Radio(
                    value: 'JNT',
                    groupValue: selectedShipping,
                    onChanged: (value) {
                      setState(() {
                        selectedShipping = value.toString();
                      });
                    },
                  ),
                  const Text('JNT'),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                "Shipping Cost to Your Address:",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "\Rp. 30000", // Contoh biaya pengiriman (dapat diganti sesuai logika bisnis Anda)
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Payment Method:",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Radio(
                    value: 'BCA',
                    groupValue: selectedPayment,
                    onChanged: (value) {
                      setState(() {
                        selectedPayment = value.toString();
                      });
                    },
                  ),
                  const Text('BCA'),
                  Radio(
                    value: 'BNI',
                    groupValue: selectedPayment,
                    onChanged: (value) {
                      setState(() {
                        selectedPayment = value.toString();
                      });
                    },
                  ),
                  const Text('BNI'),
                  Radio(
                    value: 'BRI',
                    groupValue: selectedPayment,
                    onChanged: (value) {
                      setState(() {
                        selectedPayment = value.toString();
                      });
                    },
                  ),
                  const Text('BRI'),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                "Estimation Time:",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "2-3 days", // Contoh estimasi waktu (dapat diganti sesuai logika bisnis Anda)
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Total",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Rp. ${widget.totalPrice.toStringAsFixed(2)}",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Checkout berhasil!'),
                    ),
                  );
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNavigation(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: const Size(double.infinity, 55),
                ),
                child: const Text(
                  "Confirm Checkout",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
