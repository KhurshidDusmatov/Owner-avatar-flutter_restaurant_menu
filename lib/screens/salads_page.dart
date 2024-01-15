import 'package:flutter/material.dart';
import 'package:restaurant_menu/models/meal.dart';
import 'package:restaurant_menu/widgets/product_item.dart';
class SaladsPage extends StatelessWidget {
  const SaladsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Text("Salads Page"),
            SizedBox(height: 50,),
            ProductItem(Meal.mealsUZ[0], 0)
          ],
        ),
      ),
    );
  }
}
