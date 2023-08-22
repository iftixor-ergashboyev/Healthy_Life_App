import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heathy_life/model/meal.dart';

class MealItem extends StatelessWidget {
  const MealItem({super.key, required this.meal, required this.onClick});
  final Meal meal;
  final void Function(Meal meal) onClick;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 250,
      child: Card(
        margin: const EdgeInsets.all(6),
        elevation: 5,
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12)
        ),
        child: InkWell(
          child: Stack(
            children: [
              FadeInImage(
                placeholder: const NetworkImage('https://i0.wp.com/theperfectroundgolf.com/wp-content/uploads/2022/04/placeholder.png?'),
                image: NetworkImage(meal.image),
                height: 240,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  color:const Color(0x51000000),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(meal.name,style: const TextStyle(color: Colors.white,fontSize: 22),),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(Icons.timer),
                                Text('${meal.min} min')
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(Icons.attach_money),
                                Text('${meal.price} som')
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      )
    );
  }
}
