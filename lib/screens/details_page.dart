import 'package:flutter/material.dart';
import 'package:restaurant_menu/models/meaL.dart';

class DetailsPage extends StatelessWidget {
  final int selectedItemIndex;
  DetailsPage(this.selectedItemIndex, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover),
      ),
      child: Center(
        child: detailBody(),
      ),
    );
  }

  Widget detailBody() {
    return Container(
      margin: EdgeInsets.only(top: 80.0, right: 50.0),
      color: Colors.white,
      height: double.infinity,
      width: double.infinity,
      child: getStack()
    );
  }

  Widget getStack(){
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Column(
          children: [
            Text(Meal.meals[selectedItemIndex].name!)
          ],
        ),
        Positioned(
            top: -70,
            right: -48,
            child: Image.asset(
              Meal.meals[selectedItemIndex].imageUrl!,
              width: 200,
            ))
      ],
    );
  }
}
