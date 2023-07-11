import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class User {
  String name;
  String img;
  User({required this.name, required this.img});
}

List<User> userList = [
  User(name: "Philip", img: "images/image1.jpg"),
  User(name: "Edwards", img: "images/image2.jpg"),
  User(name: "Mark", img: "images/image5.jpg"),
  User(name: "Anne", img: "images/image6.jpg"),
  User(name: "Kate", img: "images/image7.jpg"),
  User(name: "Clara", img: "images/image8.jpg"),
  User(name: "Matio", img: "images/image9.jpg"),
];


class Trans {
  String name;

  String price;
  String description;
  Trans({required this.name, required this.price, required this.description});
}

List<Trans> transList = [
  Trans(name: "Food", price: "\$450", description: "16 March 2023"),
  Trans(name: "Medicine", price: "\$4500", description: "16 April 2023"),
  Trans(name: "clothes", price: "\$45", description: "16 May 2023"),
];
