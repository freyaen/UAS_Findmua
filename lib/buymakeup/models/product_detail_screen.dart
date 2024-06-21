// import 'package:flutter/material.dart';
// import 'package:findmua/buymakeup/models/product_model.dart';
// import 'package:findmua/buymakeup/models/detail_pembelian.dart';

// class ProductDetailScreen extends StatelessWidget {
//   final Product product;

//   const ProductDetailScreen({Key? key, required this.product})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Product Detail'),
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               height: 200,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: NetworkImage(product.imageLink),
//                   fit: BoxFit.none, // Tidak diubah-ubah
//                 ),
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: Align(
//                 alignment: Alignment.topRight,
//                 child: IconButton(
//                   onPressed: () {
//                     // Handle favorite button press
//                   },
//                   icon: Icon(
//                     Icons.favorite_border,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             Text(
//               product.name,
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 10),
//             Text(
//               product.brand,
//               style: TextStyle(
//                 fontSize: 18,
//                 color: Colors.grey[600],
//               ),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Price: ${product.price} USD',
//               style: TextStyle(
//                 fontSize: 18,
//               ),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Description:',
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 10),
//             Text(
//               product.description,
//               style: TextStyle(
//                 fontSize: 16,
//                 color: Colors.grey[600],
//               ),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Product Type: ${product.productType}',
//               style: TextStyle(
//                 fontSize: 18,
//               ),
//             ),
//             SizedBox(height: 40),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 InkWell(
//                   onTap: () {
//                     // Handle add to cart button press
//                   },
//                   child: Container(
//                     padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: Colors.orange,
//                     ),
//                     child: Text(
//                       'Masukkan ke Keranjang',
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//                 InkWell(
//                   onTap: () {
//                     // Handle buy button press
//                     showModalBottomSheet(
//                       context: context, // Gunakan konteks dari ProductDetailScreen
//                       builder: (BuildContext context) => PurchaseDetailBottomSheet(product: product), // Gunakan PurchaseDetailBottomSheet sebagai builder
//                     );
//                   },
//                   child: Container(
//                     padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: Colors.orange,
//                     ),
//                     child: Text(
//                       'Beli',
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
