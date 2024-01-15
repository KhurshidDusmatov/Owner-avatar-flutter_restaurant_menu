import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_menu/provider/main_provider.dart';
import 'package:restaurant_menu/models/meaL.dart';

class DetailsPage extends StatefulWidget {
  final int selectedItemIndex;
  final Locale locale;

  DetailsPage(this.selectedItemIndex, this.locale, {super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8, top: 4),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {
                    final mainProvider = Provider.of<MainProvider>(context, listen: false);
                    mainProvider.isItemSelected(false);
                  },
                ),
              ),
              Expanded(child: detailBody()),
            ],
          ),
        ));
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
          details(getMeals()[widget.selectedItemIndex]),
          Positioned(
              top: -70,
              right: -48,
              child: Image.asset(
                getMeals()[widget.selectedItemIndex].imageUrl!,
                width: 200,
              ))
        ],
      ),
    );
  }

  List<Meal> getMeals() {
    switch (widget.locale.toString()) {
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

  Widget details(Meal meal) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 110.0,
          ),
          SizedBox(
            child: Text(
              meal.name!,
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
              maxLines: 3,
            ),
          ),
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
                  Text("438 кал", style: TextStyle(fontWeight: FontWeight.w500))
                ],
              ),
            ],
          ),
          SizedBox(height: 16),
          Text(meal.details!, style: TextStyle(height: 1.4, fontSize: 14.6)),
        ],
      ),
    );
  }
}
