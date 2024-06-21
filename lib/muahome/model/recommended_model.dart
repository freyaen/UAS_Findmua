import 'package:flutter/material.dart';

class RecommendedModel {
  Icon? icon;
  String? name;
  String? type;
  String? salary;

  RecommendedModel({this.name, this.icon, this.salary, this.type});

  static List<RecommendedModel> recommended = [
    RecommendedModel(
        icon: const Icon(
          Icons.brush, // Icon kuas untuk make up artist
          color: Color.fromARGB(225, 152, 180, 255),
          size: 35,
        ),
        name: 'MUA by KIA',
        type: 'Wedding',
        salary: '\$80'),
    RecommendedModel(
        icon: const Icon(
          Icons.face_retouching_natural, // Icon wajah untuk make up
          color: Color.fromARGB(225, 152, 180, 255),
          size: 35,
        ),
        name: 'Rungkut MUA',
        type: 'Graduation\nand Wedding',
        salary: '\$180'),
    RecommendedModel(
        icon: const Icon(
          Icons.self_improvement, // Icon perawatan diri untuk daily make up
          color: Color.fromARGB(225, 152, 180, 255),
          size: 35,
        ),
        name: 'Daily',
        type: 'Daily Make Up',
        salary: '\$80'),
    RecommendedModel(
        icon: const Icon(
          Icons.spa, // Icon perawatan kulit untuk graduation make up
          color: Color.fromARGB(225, 152, 180, 255),
          size: 35,
        ),
        name: 'Hara',
        type: 'Graduation',
        salary: '\$30'),
    RecommendedModel(
        icon: const Icon(
          Icons.palette, // Icon palet make up untuk all type make up
          color: Color.fromARGB(225, 152, 180, 255),
          size: 35,
        ),
        name: 'Beauty',
        type: 'All type',
        salary: '\$50'),
  ];
}
