import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  List muaBookingHistory = [];

  @override
  void initState() {
    super.initState();
    _fetchBookingHistory();
  }

  Future<void> _fetchBookingHistory() async {
    try {
      // Access Firestore instance
      FirebaseFirestore firestore = FirebaseFirestore.instance;

      // Query the bookings collection
      QuerySnapshot querySnapshot =
          await firestore.collection('bookings').get();

      // Extract the data from each document
      List history = querySnapshot.docs.map((doc) => doc.data()).toList();

      // Update state to refresh UI
      setState(() {
        muaBookingHistory = history;
      });
    } catch (e) {
      print('Error fetching booking history: $e');
      // Handle error appropriately, e.g., show a snackbar
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('History'),
        backgroundColor: Color.fromARGB(225, 152, 180, 255),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Text(
                'Riwayat Booking',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
              ),
              const SizedBox(height: 20),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: muaBookingHistory.length,
                itemBuilder: (context, index) {
                  final booking = muaBookingHistory[index];
                  return Card(
                    child: ListTile(
                      title: Text(booking["date"] ?? "No MUA Name"),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Time: ${booking["time"] ?? "No Time"}'),
                          Text(
                              'Total: Rp. ${booking["total"].toString() ?? "0"}'),
                          Text(
                              'Payment Method: ${booking["paymentMethod"] ?? "No Payment Method"}'),
                          // Add more fields as needed
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
