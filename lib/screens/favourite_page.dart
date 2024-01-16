import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_menu/models/meaL.dart';
import '../provider/main_provider.dart';
import '../widgets/product_item.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    final mainProvider = Provider.of<MainProvider>(context, listen: false);
    return Consumer<MainProvider>(builder: (context, data, child) {
      return FutureBuilder(
          future: mainProvider.getFavList(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return Column(
                children: [
                  SizedBox(height: 28),
                  Expanded(
                    child: GridView.builder(
                      padding: const EdgeInsets.only(top: 21),
                      itemCount: snapshot.data.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 1 / 2,
                          crossAxisCount: 1,
                          mainAxisExtent: 350,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10),
                      itemBuilder: (BuildContext context, int index) {
                        return ProductItem(getMeals()[snapshot.data[index]], snapshot.data[index],
                            isFavourite: true);
                      },
                    ),
                  ),
                ],
              );
            }
          });
    });
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
