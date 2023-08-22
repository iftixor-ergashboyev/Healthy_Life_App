import 'package:flutter/material.dart';
import 'package:heathy_life/model/meal.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.meal});

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(meal.name)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              meal.image,
              width: MediaQuery.of(context).size.width,
              height: 300,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  Text("Ingredients",style: GoogleFonts.baloo2(
                    fontSize: 22,
                    color: Color(0xcb66c994),
                  ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  for(var i in meal.ingredients)
                    Text(i,style: GoogleFonts.baloo2(
                      fontSize: 18,
                      color: Colors.white
                    ),
                      textAlign: TextAlign.center,
                    ),
                  const SizedBox(height: 10),
                  Text("Steps",style: GoogleFonts.baloo2(
                    fontSize: 22,
                    color: Color(0xcb66c994),
                  ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  for(var i in meal.steps)
                    Text(i,style: GoogleFonts.baloo2(
                        fontSize: 18,
                        color: Colors.white
                    ),
                      textAlign: TextAlign.center,
                    )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}




