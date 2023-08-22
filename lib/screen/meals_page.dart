import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:heathy_life/model/category.dart';
import 'package:heathy_life/model/meal.dart';
import 'package:heathy_life/screen/detail_page.dart';
import 'package:heathy_life/widget/meal_item.dart';

class MealsPage extends StatelessWidget {
  const MealsPage({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemCount: meals[category.id].length,
        itemBuilder: (context, index) => OpenContainer(
          closedColor: Colors.transparent,
          transitionDuration: const Duration(milliseconds: 500),
          closedBuilder: (context, invoke) => MealItem(meal: meals[category.id][index], onClick: (meal) => invoke),
          openBuilder: (context, invoke) => DetailPage(meal: meals[category.id][index]),
        )
      ),
    );
  }
}
