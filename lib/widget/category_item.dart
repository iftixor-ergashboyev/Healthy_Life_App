import 'package:heathy_life/model/category.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category, required this.onClick});

  final Category category;
  final void Function(Category category) onClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClick(category);
      },
      splashColor: Colors.white,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(colors: [
              category.color,
              category.color.withOpacity(0.9),
            ])),
        child: Text(
          category.title,
          style: const TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
    );
  }
}
