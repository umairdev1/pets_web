import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int id;

  Product({
    this.id,
    this.image,
    this.title,
    this.description,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Dog Bed Need Space",
    description: "CHF54.5",
    image: "assets/images/dog.jpg",
  ),
  Product(
    id: 2,
    title: "Cat",
    description: "CHF53.1",
    image: "assets/images/cat.jpg",
  ),
  Product(
    id: 3,
    title: "Bird",
    description: "CHF55.6",
    image: "assets/images/bird.jpg",
  ),
  Product(
    id: 4,
    title: "Fish",
    description: "CHF50.6",
    image: "assets/images/fish.jpg",
  ),
];
