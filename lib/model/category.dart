import 'package:flutter/material.dart';

class Category {
  String title;
  Color color;
  int id;

  Category({required this.title, required this.color, required this.id});
}
final categoryList = [
  Category(
    title: 'Diet',
    color: Color(0xcb66c994),
    id: 0
  ),
  Category(
      title: "Proper nutrition",
      color: Color(0xcb66c994),
      id: 1
  ),
  Category(
      title: "health",
      color: Color(0xcb66c994),
      id: 2
  ),
  Category(
      title: "Exercises(Man)",
      color: Color(0xcb66c994),
      id: 3
  ),
  Category(
      title: "Exercises(Human)",
      color: Color(0xcb66c994),
      id: 4
  ),
  Category(
      title: "Descriptions",
      color: Color(0xcb66c994),
      id: 5
  ),
  Category(
      title: "Harmful habits",
      color: Color(0xcb66c994),
      id: 6
  ),
];