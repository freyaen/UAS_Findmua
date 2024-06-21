import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;
  final String image;
  final String review;
  final String seller;
  final double price;
  final List<Color> colors;
  final String category;
  final double rate;
  int quantity;

  Product(
      {required this.title,
      required this.review,
      required this.description,
      required this.image,
      required this.price,
      required this.colors,
      required this.seller,
      required this.category,
      required this.rate,
      required this.quantity});
}

final List<Product> all = [
  Product(
    title: "Peach Natural Looks",
    description:
        "Alamat: Jl. Pandugo Baru No. 123, Kota Surabaya\nAvailable at: Toko Make-Up Cantik, Pusat Kecantikan Terbaik,\nTemukan gaya make-up terbaik untuk setiap acara di sini, dari tampilan natural sehari-hari hingga glamor untuk acara khusus. Produk terbaru dan terbaik dari merek terkemuka tersedia di toko kami.",
    image: "images/1.png",
    price: 120,
    seller: "Elsa Salon",
    colors: [
      Colors.black,
      Colors.blue,
      Colors.orange,
    ],
    category: "Natural",
    review: "(320 Reviews)",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: "Woman Pink Looks",
    description:
        "Alamat: Jl. Pandugo Baru No. 123, Kota Surabaya\nAvailable at: Toko Make-Up Cantik, Pusat Kecantikan Terbaik,\nTemukan gaya make-up terbaik untuk setiap acara di sini, dari tampilan natural sehari-hari hingga glamor untuk acara khusus. Produk terbaru dan terbaik dari merek terkemuka tersedia di toko kami.",
    image: "images/2.png",
    price: 120,
    seller: "Joy Shop",
    colors: [
      Colors.brown,
      Colors.deepPurple,
      Colors.pink,
    ],
    category: "Natural",
    review: "(32 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "Soft Pink Wedding",
    description:
        "Alamat: Jl. Pandugo Baru No. 123, Kota Surabaya\nAvailable at: Toko Make-Up Cantik, Pusat Kecantikan Terbaik,\nTemukan gaya make-up terbaik untuk setiap acara di sini, dari tampilan natural sehari-hari hingga glamor untuk acara khusus. Produk terbaru dan terbaik dari merek terkemuka tersedia di toko kami.",
    image: "images/3.png",
    price: 55,
    seller: "Ram Das",
    colors: [
      Colors.black,
      Colors.amber,
      Colors.purple,
    ],
    category: "Wedding",
    review: "(20 Reviews)",
    rate: 4.0,
    quantity: 1,
  ),
  Product(
    title: "Aesthetic Looks",
    description:    
        "Alamat: Jl. Pandugo Baru No. 123, Kota Surabaya\nAvailable at: Toko Make-Up Cantik, Pusat Kecantikan Terbaik,\nTemukan gaya make-up terbaik untuk setiap acara di sini, dari tampilan natural sehari-hari hingga glamor untuk acara khusus. Produk terbaru dan terbaik dari merek terkemuka tersedia di toko kami.",
    image: "images/4.png",
    price: 155,
    seller: "Al Store",
    colors: [
      Colors.blueAccent,
      Colors.orange,
      Colors.green,
    ],
    category: "Wedding",
    review: "(20 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Canvas Make Up",
    description:
        "Alamat: Jl. Pandugo Baru No. 123, Kota Surabaya\nAvailable at: Toko Make-Up Cantik, Pusat Kecantikan Terbaik,\nTemukan gaya make-up terbaik untuk setiap acara di sini, dari tampilan natural sehari-hari hingga glamor untuk acara khusus. Produk terbaru dan terbaik dari merek terkemuka tersedia di toko kami.",
    image: "images/5.png",
    price: 1000,
    seller: "Al Store",
    colors: [
      Colors.lightBlue,
      Colors.orange,
      Colors.purple,
    ],
    category: "Party",
    review: "(100 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Bold Looks",
    description:
        "Alamat: Jl. Pandugo Baru No. 123, Kota Surabaya\nAvailable at: Toko Make-Up Cantik, Pusat Kecantikan Terbaik,\nTemukan gaya make-up terbaik untuk setiap acara di sini, dari tampilan natural sehari-hari hingga glamor untuk acara khusus. Produk terbaru dan terbaik dari merek terkemuka tersedia di toko kami.",
    image: "images/8.png",
    price: 255,
    seller: "The Seller",
    colors: [
      Colors.grey,
      Colors.amber,
      Colors.purple,
    ],
    category: "Party",
    review: "(55 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Make Up for Hooded Eyes",
    description:
        "Alamat: Jl. Pandugo Baru No. 123, Kota Surabaya\nAvailable at: Toko Make-Up Cantik, Pusat Kecantikan Terbaik,\nTemukan gaya make-up terbaik untuk setiap acara di sini, dari tampilan natural sehari-hari hingga glamor untuk acara khusus. Produk terbaru dan terbaik dari merek terkemuka tersedia di toko kami.",
    image: "images/7.png",
    price: 155,
    seller: "Love Seller",
    colors: [
      Colors.purpleAccent,
      Colors.pinkAccent,
      Colors.green,
    ],
    category: "Party",
    review: "(99 Reviews)",
    rate: 4.7,
    quantity: 1,
  ),
  Product(
    title: "Party Looks for Men",
    description:
        "Alamat: Jl. Pandugo Baru No. 123, Kota Surabaya\nAvailable at: Toko Make-Up Cantik, Pusat Kecantikan Terbaik,\nTemukan gaya make-up terbaik untuk setiap acara di sini, dari tampilan natural sehari-hari hingga glamor untuk acara khusus. Produk terbaru dan terbaik dari merek terkemuka tersedia di toko kami.",
    image: "images/6.png",
    price: 155,
    seller: "I Am Seller",
    colors: [
      Colors.brown,
      Colors.purpleAccent,
      Colors.blueGrey,
    ],
    category: "Men's Grooming",
    review: "(80 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "Soft Graduation Looks",
    description:
        "Alamat: Jl. Pandugo Baru No. 123, Kota Surabaya\nAvailable at: Toko Make-Up Cantik, Pusat Kecantikan Terbaik,\nTemukan gaya make-up terbaik untuk setiap acara di sini, dari tampilan natural sehari-hari hingga glamor untuk acara khusus. Produk terbaru dan terbaik dari merek terkemuka tersedia di toko kami.",
    image: "images/11.jpg",
    price: 155,
    seller: "PK Store",
    colors: [
      Colors.lightGreen,
      Colors.blueGrey,
      Colors.deepPurple,
    ],
    category: "Graduation",
    review: "(55 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Natural Graduation Looks",
    description:
        "Alamat: Jl. Pandugo Baru No. 123, Kota Surabaya\nAvailable at: Toko Make-Up Cantik, Pusat Kecantikan Terbaik,\nTemukan gaya make-up terbaik untuk setiap acara di sini, dari tampilan natural sehari-hari hingga glamor untuk acara khusus. Produk terbaru dan terbaik dari merek terkemuka tersedia di toko kami.",
    image: "images/10.jpg",
    price: 155,
    seller: "PK Store",
    colors: [
      Colors.lightGreen,
      Colors.blueGrey,
      Colors.deepPurple,
    ],
    category: "Graduation",
    review: "(55 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Bold Graduation Looks",
    description:
        "Alamat: Jl. Pandugo Baru No. 123, Kota Surabaya\nAvailable at: Toko Make-Up Cantik, Pusat Kecantikan Terbaik,\nTemukan gaya make-up terbaik untuk setiap acara di sini, dari tampilan natural sehari-hari hingga glamor untuk acara khusus. Produk terbaru dan terbaik dari merek terkemuka tersedia di toko kami.",
    image: "images/9.jpg",
    price: 155,
    seller: "PK Store",
    colors: [
      Colors.lightGreen,
      Colors.blueGrey,
      Colors.deepPurple,
    ],
    category: "Graduation",
    review: "(55 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
];

final List<Product> natural = [
  Product(
    title: "Peach Natural Looks",
    description:
        "Alamat: Jl. Pandugo Baru No. 123, Kota Surabaya\nAvailable at: Toko Make-Up Cantik, Pusat Kecantikan Terbaik,\nTemukan gaya make-up terbaik untuk setiap acara di sini, dari tampilan natural sehari-hari hingga glamor untuk acara khusus. Produk terbaru dan terbaik dari merek terkemuka tersedia di toko kami.",
    image: "images/1.png",
    price: 120,
    seller: "Elsa Salon",
    colors: [
      Colors.black,
      Colors.blue,
      Colors.orange,
    ],
    category: "Natural",
    review: "(320 Reviews)",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: "Woman Pink Looks",
    description:
        "Alamat: Jl. Pandugo Baru No. 123, Kota Surabaya\nAvailable at: Toko Make-Up Cantik, Pusat Kecantikan Terbaik,\nTemukan gaya make-up terbaik untuk setiap acara di sini, dari tampilan natural sehari-hari hingga glamor untuk acara khusus. Produk terbaru dan terbaik dari merek terkemuka tersedia di toko kami.",
    image: "images/2.png",
    price: 120,
    seller: "Joy Shop",
    colors: [
      Colors.brown,
      Colors.deepPurple,
      Colors.pink,
    ],
    category: "Natural",
    review: "(32 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
];

final List<Product> party = [
  Product(
    title: "Canvas Make Up",
    description:
        "Alamat: Jl. Pandugo Baru No. 123, Kota Surabaya\nAvailable at: Toko Make-Up Cantik, Pusat Kecantikan Terbaik,\nTemukan gaya make-up terbaik untuk setiap acara di sini, dari tampilan natural sehari-hari hingga glamor untuk acara khusus. Produk terbaru dan terbaik dari merek terkemuka tersedia di toko kami.",
    image: "images/5.png",
    price: 1000,
    seller: "Al Store",
    colors: [
      Colors.lightBlue,
      Colors.orange,
      Colors.purple,
    ],
    category: "Party",
    review: "(100 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Bold Looks",
    description:
        "Alamat: Jl. Pandugo Baru No. 123, Kota Surabaya\nAvailable at: Toko Make-Up Cantik, Pusat Kecantikan Terbaik,\nTemukan gaya make-up terbaik untuk setiap acara di sini, dari tampilan natural sehari-hari hingga glamor untuk acara khusus. Produk terbaru dan terbaik dari merek terkemuka tersedia di toko kami.",
    image: "images/8.png",
    price: 255,
    seller: "The Seller",
    colors: [
      Colors.grey,
      Colors.amber,
      Colors.purple,
    ],
    category: "Party",
    review: "(55 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Make Up for Hooded Eyes",
    description:
        "Alamat: Jl. Pandugo Baru No. 123, Kota Surabaya\nAvailable at: Toko Make-Up Cantik, Pusat Kecantikan Terbaik,\nTemukan gaya make-up terbaik untuk setiap acara di sini, dari tampilan natural sehari-hari hingga glamor untuk acara khusus. Produk terbaru dan terbaik dari merek terkemuka tersedia di toko kami.",
    image: "images/7.png",
    price: 155,
    seller: "Love Seller",
    colors: [
      Colors.purpleAccent,
      Colors.pinkAccent,
      Colors.green,
    ],
    category: "Party",
    review: "(99 Reviews)",
    rate: 4.7,
    quantity: 1,
  ),
];

final List<Product> graduation = [
  Product(
    title: "Soft Graduation Looks",
    description:
        "Alamat: Jl. Pandugo Baru No. 123, Kota Surabaya\nAvailable at: Toko Make-Up Cantik, Pusat Kecantikan Terbaik,\nTemukan gaya make-up terbaik untuk setiap acara di sini, dari tampilan natural sehari-hari hingga glamor untuk acara khusus. Produk terbaru dan terbaik dari merek terkemuka tersedia di toko kami.",
    image: "images/11.jpg",
    price: 155,
    seller: "PK Store",
    colors: [
      Colors.lightGreen,
      Colors.blueGrey,
      Colors.deepPurple,
    ],
    category: "Graduation",
    review: "(55 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Natural Graduation Looks",
    description:
        "Alamat: Jl. Pandugo Baru No. 123, Kota Surabaya\nAvailable at: Toko Make-Up Cantik, Pusat Kecantikan Terbaik,\nTemukan gaya make-up terbaik untuk setiap acara di sini, dari tampilan natural sehari-hari hingga glamor untuk acara khusus. Produk terbaru dan terbaik dari merek terkemuka tersedia di toko kami.",
    image: "images/10.jpg",
    price: 155,
    seller: "PK Store",
    colors: [
      Colors.lightGreen,
      Colors.blueGrey,
      Colors.deepPurple,
    ],
    category: "Graduation",
    review: "(55 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Bold Graduation Looks",
    description:
        "Alamat: Jl. Pandugo Baru No. 123, Kota Surabaya\nAvailable at: Toko Make-Up Cantik, Pusat Kecantikan Terbaik,\nTemukan gaya make-up terbaik untuk setiap acara di sini, dari tampilan natural sehari-hari hingga glamor untuk acara khusus. Produk terbaru dan terbaik dari merek terkemuka tersedia di toko kami.",
    image: "images/9.jpg",
    price: 155,
    seller: "PK Store",
    colors: [
      Colors.lightGreen,
      Colors.blueGrey,
      Colors.deepPurple,
    ],
    category: "Graduation",
    review: "(55 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
];
final List<Product> wedding = [
  Product(
    title: "Soft Pink Wedding",
    description:
        "Alamat: Jl. Pandugo Baru No. 123, Kota Surabaya\nAvailable at: Toko Make-Up Cantik, Pusat Kecantikan Terbaik,\nTemukan gaya make-up terbaik untuk setiap acara di sini, dari tampilan natural sehari-hari hingga glamor untuk acara khusus. Produk terbaru dan terbaik dari merek terkemuka tersedia di toko kami.",
    image: "images/3.png",
    price: 55,
    seller: "Ram Das",
    colors: [
      Colors.black,
      Colors.amber,
      Colors.purple,
    ],
    category: "Wedding",
    review: "(20 Reviews)",
    rate: 4.0,
    quantity: 1,
  ),
  Product(
    title: "Aesthetic Looks",
    description:
        "Alamat: Jl. Pandugo Baru No. 123, Kota Surabaya\nAvailable at: Toko Make-Up Cantik, Pusat Kecantikan Terbaik,\nTemukan gaya make-up terbaik untuk setiap acara di sini, dari tampilan natural sehari-hari hingga glamor untuk acara khusus. Produk terbaru dan terbaik dari merek terkemuka tersedia di toko kami.",
    image: "images/4.png",
    price: 155,
    seller: "Al Store",
    colors: [
      Colors.blueAccent,
      Colors.orange,
      Colors.green,
    ],
    category: "Wedding",
    review: "(20 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
];
final List<Product> MensGrooming = [
  Product(
    title: "Party Looks for Men",
    description:
        "Alamat: Jl. Pandugo Baru No. 123, Kota Surabaya\nAvailable at: Toko Make-Up Cantik, Pusat Kecantikan Terbaik,\nTemukan gaya make-up terbaik untuk setiap acara di sini, dari tampilan natural sehari-hari hingga glamor untuk acara khusus. Produk terbaru dan terbaik dari merek terkemuka tersedia di toko kami.",
    image: "images/6.png",
    price: 155,
    seller: "I Am Seller",
    colors: [
      Colors.brown,
      Colors.purpleAccent,
      Colors.blueGrey,
    ],
    category: "Men's Grooming",
    review: "(80 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
];
