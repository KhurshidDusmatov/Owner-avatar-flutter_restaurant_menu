import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_menu/lang_provider.dart';
import 'package:restaurant_menu/models/meaL.dart';

import 'details_page.dart';

class DishesPage extends StatefulWidget {
  DishesPage({super.key});

  @override
  State<DishesPage> createState() => _DishesPageState();
}

class _DishesPageState extends State<DishesPage> {
  int _selectedItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    final langProvider = Provider.of<LangProvider>(context, listen: false);
    return WillPopScope(
      onWillPop: () {
        langProvider.getItemSelected()
            ? setState(() {
                langProvider.isItemSelected(false);
              })
            : exit(0);
        return Future.value(false);
      },
      child: Consumer<LangProvider>(builder: (context, data, child) {
        return SafeArea(
          child: langProvider.getItemSelected()
              ? DetailsPage(_selectedItemIndex, context.locale)
              : Scaffold(
                  body: LayoutBuilder(builder:
                      (BuildContext context, BoxConstraints constraints) {
                    return mainUI(constraints);
                  }),
                ),
        );
      }),
    );
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
              return meal(getMeals()[index], context, index);
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

  Widget meal(Meal meal, context, int index) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            elevation: 48.0,
            color: Color(meal.bannerColor!),
            child: Container(
              height: 300,
              width: 230,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          height: 25,
                          width: 2,
                          color: Color(0xff00195C),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          meal.type!,
                          style: TextStyle(color: Color(0xff00195C)),
                        ),
                      ],
                    ),
                    SizedBox(height: 13),
                    SizedBox(
                      height: 86,
                      child: Text(
                        meal.name!,
                        style: TextStyle(
                            height: 1.2,
                            color: Color(0xff1E2022),
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 13),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("cost".tr(),
                            style: TextStyle(fontWeight: FontWeight.w500)),
                        Text(meal.cost!,
                            style: TextStyle(fontWeight: FontWeight.w500))
                      ],
                    ),
                    SizedBox(
                      height: 13,
                    ),
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
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/images/btn_pls.png",
                            height: 50,
                            width: 50,
                          ),
                          Container(
                            height: 50,
                            width: 120,
                            child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    final langProvider = Provider.of<LangProvider>(context, listen: false);
                                    langProvider.isItemSelected(true);
                                    _selectedItemIndex = index;
                                  });
                                },
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff175B8F)),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                                child: Text("more".tr())),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )),
        Positioned(
            top: -24,
            right: -8,
            child: Image.asset(
              meal.imageUrl!,
              height: 140,
              width: 140,
            ))
      ],
    );
  }
}
