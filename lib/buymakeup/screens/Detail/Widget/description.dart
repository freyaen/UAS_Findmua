import 'package:flutter/material.dart';
//import 'review.dart'; // Assuming 'review.dart' is where ReviewSection is defined

class Description extends StatefulWidget {
  final String description;

  const Description({Key? key, required this.description}) : super(key: key);

  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  bool showDescription = true; // State to control visibility of description
  //bool showReviews = false; // State to control visibility of reviews

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  showDescription = true;
                  //showReviews = false;
                });
              },
              child: Container(
                width: 120,
                height: 40,
                decoration: BoxDecoration(
                  color: showDescription ? Color(0xFFFFA726) : Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Description",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            // GestureDetector(
            //   onTap: () {
            //     setState(() {
            //       showDescription = false;
            //       showReviews = true;
            //     });
            //     // // Navigate to ReviewSection page when Reviews tab is tapped
            //     // Navigator.push(
            //     //   context,
            //     //   MaterialPageRoute(builder: (context) => ReviewSection(
            //     //     reviews: [], // Pass your list of reviews here
            //     //     onSubmit: (review) {
            //     //       // Handle review submission logic
            //     //     },
            //     //   )),
            //     // );
            //   },
            //   child: Container(
            //     width: 120,
            //     height: 40,
            //     decoration: BoxDecoration(
            //       color: showReviews ? Color(0xFFFFA726) : Colors.grey,
            //       borderRadius: BorderRadius.circular(20),
            //     ),
            //     alignment: Alignment.center,
            //     // child: const Text(
            //     //   "Reviews",
            //     //   style: TextStyle(
            //     //     fontWeight: FontWeight.bold,
            //     //     color: Colors.white,
            //     //     fontSize: 16,
            //     //   ),
            //     // ),
            //   ),
            // ),
          ],
        ),
        const SizedBox(height: 20),
        if (showDescription)
          Text(
            widget.description,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        // Placeholder for Reviews content
        // if (showReviews)
        //   GestureDetector(
        //     onTap: () {
        //       // Navigate to ReviewSection page when Reviews section is tapped
        //       // Navigator.push(
        //       //   context,
        //       //   MaterialPageRoute(builder: (context) => ReviewSection(
        //       //     reviews: [], // Pass your list of reviews here
        //       //     onSubmit: (review) {
        //       //       // Handle review submission logic
        //       //     },
        //       //   )),
        //       // );
        //     },
        //     // child: Text(
        //     //   "Reviews content will be here",
        //     //   style: const TextStyle(
        //     //     fontSize: 16,
        //     //     color: Colors.grey,
        //     //   ),
        //     // ),
        //   ),
      ],
    );
  }
}
