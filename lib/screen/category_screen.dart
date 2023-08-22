import 'package:flutter/material.dart';
import 'package:heathy_life/model/category.dart';
import 'package:heathy_life/widget/category_item.dart';

import 'meals_page.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 3 / 2,
        ),
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return CategoryItem(
            category: categoryList[index],
            onClick: (category) {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => MealsPage(category: category))
              );
            }
          );
        },
      ),
    );
  }
}
