import 'dart:math';

import 'package:flutter/material.dart';
import 'package:grock/grock.dart';

Random rnd = new Random();

class Product {
  int id = rnd.nextInt(100);
  String image;
  String title;
  int price;
  double star;
  bool isSaved;
  String deskTitle;
  String deskDetail;
  List<Color> colors;
  Product(
      {required this.image,
      required this.title,
      required this.price,
      required this.isSaved,
      required this.star,
      required this.deskTitle,
      required this.deskDetail,
      required this.colors});
}
