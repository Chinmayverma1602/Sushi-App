import 'package:flutter/material.dart';
import 'package:sushi_app/themes/colors.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Function()? onTap;
  const MyButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:  onTap,
      child: Container(
       decoration: BoxDecoration(color: secondaryColor, borderRadius: BorderRadius.circular(40)),
       padding: EdgeInsets.all(10),
       child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text(text,
           style: TextStyle(color: Colors.white),
           ),
           const SizedBox(width: 10),
           Icon(Icons.arrow_forward, color: Colors.white,)
         ],
       ),
      ),
    );
  }
}
