import 'dart:core';
import 'package:flutter/material.dart';
import 'package:itemdetail_depth/models/specific_item_detail_model.dart';
import '../models/item_detail_model.dart';

class AppString {
  static List<ItemDetailModel> itemoption = [
    ItemDetailModel(
        name: "Speakers",
        img: "assets/images/1.png",
        productcount: "100+ Products",
        price: "\$200"),
    ItemDetailModel(
        name: 'Headphone',
        img: 'assets/images/2.png',
        productcount: "15+ Products",
        price: "\$200"),
    ItemDetailModel(
        name: 'Beosoung 1',
        img: 'assets/images/3.png',
        price: "\$200",
        productcount: "10+ Products"),
    ItemDetailModel(
        name: 'Beolit 17',
        img: 'assets/images/4.png',
        price: "\$200",
        productcount: "100+ Products"),
  ];
  static List<ItemDetailModel> recommendedoption = [
    ItemDetailModel(
        name: "Speakers",
        img: "assets/images/1.png",
        price: "\$200",
        productcount: "100+ Products"),
    ItemDetailModel(
        name: 'Headphone',
        img: 'assets/images/2.png',
        price: "\$200",
        productcount: "15+ Products"),
    ItemDetailModel(
        name: 'Beosoung 1',
        img: 'assets/images/3.png',
        price: '\$200',
        productcount: "10+ Products"),
    ItemDetailModel(
        name: 'Beolit 17',
        img: 'assets/images/4.png',
        price: "\$200",
        productcount: "100+ Products"),
    ItemDetailModel(
        name: 'Beoplay A9',
        price: "\$200",
        img: 'assets/images/5.png',
        productcount: "2+ Products"),
  ];

  static List<SpecificItemDetailModel> specificitemlist = [
    SpecificItemDetailModel(
      name: "Beosound Balance",
      img: "assets/images/1.png",
      description: "Innovative, wireless home speakers",
    ),
    SpecificItemDetailModel(
      name: 'Headphone',
      img: 'assets/images/2.png',
      description: "Innovative, wireless home speakers",
    ),
    SpecificItemDetailModel(
      name: 'Beosoung 1',
      img: 'assets/images/3.png',
      description: "Innovative, wireless home speakers",
    ),
    SpecificItemDetailModel(
      name: 'Beolit 17',
      img: 'assets/images/4.png',
      description: "Innovative, wireless home speakers",
    ),
    SpecificItemDetailModel(
      name: 'Beoplay A9',
      img: 'assets/images/5.png',
      description: "Innovative, wireless home speakers",
    ),
  ];
  static List options = ["View All", "Portable", "Multiroom", "Architecture"];
  static List<Color> color = [
    Colors.red,
    Colors.blue,
    Colors.pink,
    Colors.orange,
    Colors.grey,
    Colors.black,
    Colors.purple
  ];
  static List<String> gender = ["Female", "Male", "Both"];
}
