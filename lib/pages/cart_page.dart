import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushi_app/models/shop.dart';
import 'package:sushi_app/themes/colors.dart';

import '../models/food.dart';

class CartPage extends StatelessWidget {
  void removeFromCart() {}
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
        builder: (context, value, child) => Scaffold(
            backgroundColor: primaryColors,
            appBar: AppBar(
              title: Text("My Cart"),
              elevation: 0,
              backgroundColor: primaryColors,
            ),
            body: ListView.builder(
                    itemCount: value.cart.length,
                    itemBuilder: (context, index) {
                      final Food food = value.cart[index];
            
                      final String foodName = food.name;
            
                      final String foodPrice = food.price;
            
                      return Container(
                        decoration: BoxDecoration(
                            color: secondaryColor,
                            borderRadius: BorderRadius.circular(8)),
                        margin:
                            const EdgeInsets.only(left: 25, top: 25, right: 20),
                        child: ListTile(
                          title: Text(
                            foodName,
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            foodPrice,
                            style: TextStyle(
                              color: Colors.grey[200],
                            ),
                          ),
                          trailing: IconButton(
                            onPressed: removeFromCart,
                            icon: Icon(Icons.delete),
                            color: Colors.grey[300],
                          ),
                        ),
                      );
                    }),
            ),
            );
            
            
        
  }
}
