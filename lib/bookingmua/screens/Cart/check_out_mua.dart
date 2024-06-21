import 'package:findmua/muahome/screens/riwayat/riwayat.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CheckOutBox extends StatefulWidget {
  final List<dynamic> finalList;
  final double totalPrice;

  const CheckOutBox(
      {Key? key, required this.finalList, required this.totalPrice})
      : super(key: key);

  @override
  _CheckOutBoxState createState() => _CheckOutBoxState();
}

class _CheckOutBoxState extends State<CheckOutBox> {
  TextEditingController addressController = TextEditingController();
  DateTime? selectedDate;
  TimeOfDay? selectedTime;
  String selectedPayment = 'BCA';
  bool isAvailable = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
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
            Text(
              "Product Name",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                _selectDate(context);
              },
              child: Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(225, 152, 180, 255),
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    const Icon(
                      Icons.calendar_today,
                      color: Colors.grey,
                      size: 30,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        selectedDate == null
                            ? "Select Date"
                            : DateFormat('dd/MM/yyyy').format(selectedDate!),
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                _selectTime(context);
              },
              child: Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(225, 152, 180, 255),
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    const Icon(
                      Icons.access_time,
                      color: Colors.grey,
                      size: 30,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        selectedTime == null
                            ? "Select Time"
                            : "${selectedTime!.format(context)} - ${(selectedTime!.hour + 2) % 24}:${selectedTime!.minute.toString().padLeft(2, '0')}",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Payment Method:",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Column(
              children: [
                ListTile(
                  title: const Text('BCA'),
                  leading: Radio(
                    value: 'BCA',
                    groupValue: selectedPayment,
                    onChanged: (value) {
                      setState(() {
                        selectedPayment = value.toString();
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('BNI'),
                  leading: Radio(
                    value: 'BNI',
                    groupValue: selectedPayment,
                    onChanged: (value) {
                      setState(() {
                        selectedPayment = value.toString();
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('BRI'),
                  leading: Radio(
                    value: 'BRI',
                    groupValue: selectedPayment,
                    onChanged: (value) {
                      setState(() {
                        selectedPayment = value.toString();
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const SizedBox(height: 10),
            const Divider(),
            const SizedBox(height: 10),
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
              onPressed: isAvailable ? _saveBookingData : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: isAvailable ? Colors.blue : Colors.grey,
                minimumSize: const Size(double.infinity, 55),
              ),
              child: const Text(
                "Booking",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            if (!isAvailable)
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "MUA tidak tersedia pada waktu tersebut",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.red,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().year + 1),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        _checkAvailability();
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
        _checkAvailability();
      });
    }
  }

  void _checkAvailability() {
    if (selectedDate != null && selectedTime != null) {
      bool availability = _mockCheckAvailability(selectedDate!, selectedTime!);

      setState(() {
        isAvailable = availability;
      });
    }
  }

  bool _mockCheckAvailability(DateTime date, TimeOfDay time) {
    // Replace with actual availability check logic
    return true; // Example condition
  }

  void _saveBookingData() async {
    Map<String, dynamic> bookingData = {
      'date': selectedDate != null
          ? DateFormat('dd/MM/yyyy').format(selectedDate!)
          : '',
      'time': selectedTime != null
          ? '${selectedTime!.hour}:${selectedTime!.minute.toString().padLeft(2, '0')}'
          : '',
      'paymentMethod': selectedPayment,
      'total': widget.totalPrice
    };

    try {
      FirebaseFirestore firestore = FirebaseFirestore.instance;

      await firestore.collection('bookings').add(bookingData);

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HistoryPage(),
        ),
      );
      print('Booking data saved successfully');
    } catch (e) {
      print('Failed to save booking data: $e');
    }
  }
}
