import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/food.dart';

class FoodTile extends StatelessWidget {
   final Food food;
  void Function()? onTap;
  FoodTile({super.key, required this.food, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        margin: EdgeInsets.only(left: 25),
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              food.imagePath,
              height: 140,
            ),
            Text(
              food.name,
              style: GoogleFonts.dmSerifDisplay(fontSize: 20),
            ),
            SizedBox(
              width: 160,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$' + food.price,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey[700]),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow[900],
                      ),
                      Text(
                        food.rating,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
