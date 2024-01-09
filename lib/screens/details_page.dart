import 'package:flutter/material.dart';
import 'package:restaurant_menu/models/meaL.dart';

class DetailsPage extends StatelessWidget {
  final int selectedItemIndex;
  DetailsPage(this.selectedItemIndex, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [BoxShadow(
          color: Colors.black12,
          blurRadius: 4,
          offset: Offset(4, 4)
        ),],
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
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          details(Meal.meals[selectedItemIndex]),
          Positioned(
              top: -70,
              right: -48,
              child: Image.asset(
                Meal.meals[selectedItemIndex].imageUrl!,
                width: 200,
              ))
        ],
      ),
    );
  }

  Widget details(Meal meal){
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 110.0,),
          SizedBox(
              child: Text(meal.name!,
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                maxLines: 3,
              ),),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/ic_dish.png",
                    height: 16,
                    width: 16,
                  ),
                  SizedBox(width: 5),
                  Text(meal.time!,
                      style: TextStyle(fontWeight: FontWeight.w500))
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/ic_in.png",
                    height: 16,
                    width: 16,
                  ),
                  SizedBox(width: 5),
                  Text(meal.ingCount.toString() + " инг",
                      style: TextStyle(fontWeight: FontWeight.w500))
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/vector.png",
                    height: 16,
                    width: 16,
                  ),
                  SizedBox(width: 5),
                  Text("438 кал",
                      style: TextStyle(fontWeight: FontWeight.w500))
                ],
              ),

            ],
          ),
          SizedBox(height: 16),
          Text(meal.details!, style: TextStyle(height: 1.4, fontSize: 15)),
        ],
      ),
    );
  }
}
