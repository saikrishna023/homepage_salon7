import 'dart:developer';
import 'package:flutter/cupertino.dart';

class Services {
  late String title;
  late String amount;
  late String description;
  late  String  image;


  Services({
    required this.title,
    required this.amount,
    required this.description,
    required this.image});
}
List<Services> serviceList = [
  Services(
    title: "Men's Haircut",
    amount: "Rs 249/-",
    description: ('Professional haircut that sutes your face shape and Speclally trained stylish for men.'),
    image: 'images/haircut2.jpg',
  ),

  Services(
      title: "Men's Shaving",
      amount: "Rs 199/-",
      description: ('Professional beard grooming that sutes your face shape andSmooth and Staright for a fresh look'),
      image: 'images/shaving.jpeg'
  ),
  Services(
    title: "Hair Colour",
    amount: "Rs 299/-",
    description: ('Even and mess- free colour application'),
    image: 'images/haircolor2.jpg',
  ),
  Services(
      title: "Face Care",
      amount: "Rs 499/-",
      description: ('Cleaning of face,neck along with Scrubbing and deep cleansing of face to remove dead skin' ),
      image:'images/facecare.jpeg'

  ),
  Services(
      title: "Massage",
      amount: "Rs 399/-",
      description: ('Relaxing oil Massage to treat stiff / tense muscle & relives stress'),
      image: 'images/massage2.jpg'),
];