// import 'package:flutter/material.dart';

// // Define a Review class to encapsulate review data
// class Review {
//   final String username;
//   final String reviewText;
//   final int rating;

//   Review({
//     required this.username,
//     required this.reviewText,
//     required this.rating,
//   });
// }

// // ReviewSection is a StatefulWidget to manage the state of reviews and submission
// class ReviewSection extends StatefulWidget {
//   final List<Review> reviews; // List of existing reviews
//   final Function(Review) onSubmit; // Callback function for submitting a review

//   const ReviewSection({
//     Key? key,
//     required this.reviews,
//     required this.onSubmit,
//   }) : super(key: key);

//   @override
//   _ReviewSectionState createState() => _ReviewSectionState();
// }

// class _ReviewSectionState extends State<ReviewSection> {
//   TextEditingController reviewController = TextEditingController();
//   int rating = 5; // Default rating

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         // Section to display existing reviews
//         Text(
//           "Reviews (${widget.reviews.length})", // Show total number of reviews
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 18,
//           ),
//         ),
//         SizedBox(height: 10),
//         // ListView to display each review in a ListTile format
//         ListView.builder(
//           shrinkWrap: true,
//           physics: NeverScrollableScrollPhysics(), // Disable scrolling within ListView
//           itemCount: widget.reviews.length,
//           itemBuilder: (context, index) {
//             return ListTile(
//               title: Text(widget.reviews[index].username), // Display username
//               subtitle: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(widget.reviews[index].reviewText), // Display review text
//                   SizedBox(height: 5),
//                   // Display star ratings based on the review's rating
//                   Row(
//                     children: List.generate(
//                       5,
//                       (i) => Icon(
//                         i < widget.reviews[index].rating ? Icons.star : Icons.star_border,
//                         color: Colors.amber,
//                         size: 18,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           },
//         ),
//         SizedBox(height: 20),
//         // Section to allow users to leave a new review
//         Text(
//           "Leave a Review",
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 18,
//           ),
//         ),
//         SizedBox(height: 10),
//         // TextField for users to enter their review text
//         TextField(
//           controller: reviewController,
//           maxLines: 3,
//           decoration: InputDecoration(
//             hintText: "Write your review here...",
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(10),
//             ),
//           ),
//         ),
//         SizedBox(height: 10),
//         // Row to select star rating for the new review
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text("Rating:"), // Label for star rating selection
//             DropdownButton<int>(
//               value: rating,
//               onChanged: (value) {
//                 setState(() {
//                   rating = value!;
//                 });
//               },
//               items: [1, 2, 3, 4, 5]
//                   .map((rating) => DropdownMenuItem<int>(
//                         value: rating,
//                         child: Text("$rating stars"),
//                       ))
//                   .toList(),
//             ),
//           ],
//         ),
//         SizedBox(height: 10),
//         // Button to submit the new review
//         ElevatedButton(
//           onPressed: () {
//             String reviewText = reviewController.text.trim();
//             if (reviewText.isNotEmpty) {
//               // Create a new Review object with enterrevied data
//               Review newReview = Review(
//                 username: "User", // Replace with actual logic to get username
//                 reviewText: reviewText,
//                 rating: rating,
//               );
//               // Call the onSubmit function passed from the parent widget
//               widget.onSubmit(newReview);
//               // Clear the review text field and reset rating after submission
//               reviewController.clear();
//               setState(() {
//                 rating = 5;
//               });
//             }
//           },
//           child: Text("Submit Review"),
//         ),
//       ],
//     );
//   }
// }
