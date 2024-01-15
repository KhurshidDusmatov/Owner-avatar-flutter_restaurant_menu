import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_menu/provider/main_provider.dart';
import 'package:restaurant_menu/models/meaL.dart';
import 'package:restaurant_menu/widgets/product_item.dart';

class DishesPage extends StatefulWidget {
  DishesPage({super.key});

  @override
  State<DishesPage> createState() => _DishesPageState();
}

class _DishesPageState extends State<DishesPage> {

  @override
  Widget build(BuildContext context) {
    return Consumer<MainProvider>(builder: (context, data, child) {
        return SafeArea(
          child: Scaffold(
                  body: LayoutBuilder(builder:
                      (BuildContext context, BoxConstraints constraints) {
                    return mainUI(constraints);
                  }),
                ),
        );
      });
  }

  Widget mainUI(BoxConstraints constraints) {
    print("Current width : ${constraints.maxWidth}");
    var axisCount = 1;
    var currentWidth = constraints.maxWidth;
    if (currentWidth <= 500) {
      axisCount = 1;
    } else if (currentWidth >= 500 && currentWidth <= 750) {
      axisCount = 2;
    } else if (currentWidth > 750 && currentWidth <= 1100) {
      axisCount = 3;
    } else {
      axisCount = 4;
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(16),
          child: Text("title".tr(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
        ),
        Expanded(
          child: GridView.builder(
            padding: EdgeInsets.only(top: 21),
            itemCount: getMeals().length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1 / 2,
                crossAxisCount: axisCount,
                mainAxisExtent: 350,
                crossAxisSpacing: 10,
                mainAxisSpacing: 30),
            itemBuilder: (BuildContext context, int index) {
              return ProductItem(getMeals()[index], index);
            },
          ),
        )
      ],
    );
  }

  List<Meal> getMeals() {
    switch (context.locale.toString()) {
      case "uz_UZ":
        {
          return Meal.mealsUZ;
        }
      case "ru_RU":
        {
          return Meal.mealsRU;
        }
      case "en_US":
        {
          return Meal.mealsEN;
        }
      default:
        return Meal.mealsUZ;
    }
  }
}
