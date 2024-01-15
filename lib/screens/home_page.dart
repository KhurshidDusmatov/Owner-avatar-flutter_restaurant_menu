import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_menu/provider/main_provider.dart';
import 'package:restaurant_menu/screens/dishes_page.dart';
import 'package:restaurant_menu/screens/drinks_page.dart';
import 'package:restaurant_menu/screens/fast_food_page.dart';
import 'package:restaurant_menu/screens/favourite_page.dart';
import 'package:restaurant_menu/screens/salads_page.dart';

import '../models/lang.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    await Future.delayed(const Duration(seconds: 2));
    FlutterNativeSplash.remove();
  }

  List<Widget> _pages = [
    FavouritePage(),
    DishesPage(),
    SaladsPage(),
    DrinksPage(),
    FastFoodPage()
  ];
  List<Lang> _langs = [
    Lang(name: "uz", isActive: true),
    Lang(name: "ru", isActive: false),
    Lang(name: "en", isActive: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return navigationMenu(constraints, context);
        }),
        Expanded(
            child: Navigator(
          onGenerateRoute: (settings) =>
              MaterialPageRoute(builder: (context) => _pages[_selectedIndex]),
        ))
      ],
    ));
  }

  Widget navigationMenu(BoxConstraints constraints, BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: constraints.maxHeight),
          child: IntrinsicHeight(
            child: NavigationRail(
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              minWidth: 55,
              selectedIndex: _selectedIndex,
              backgroundColor: Color(0xff2A5270),
              labelType: NavigationRailLabelType.all,
              selectedLabelTextStyle:
                  const TextStyle(color: Colors.white, fontSize: 21.0),
              unselectedLabelTextStyle:
                  const TextStyle(color: Colors.white70, fontSize: 14.0),
              groupAlignment: 0.1,
              leading: langBuild(),
              destinations: [
                NavigationRailDestination(
                  icon: SizedBox(),
                  label: RotatedBox(
                    quarterTurns: 0,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
                NavigationRailDestination(
                    icon: SizedBox(),
                    label: RotatedBox(
                      quarterTurns: -1,
                      child: Text("meals".tr()),
                    )),
                NavigationRailDestination(
                    icon: SizedBox(),
                    label: RotatedBox(
                      quarterTurns: -1,
                      child: Text("salads".tr()),
                    )),
                NavigationRailDestination(
                    icon: SizedBox(),
                    label: RotatedBox(
                      quarterTurns: -1,
                      child: Text("drinks".tr()),
                    )),
                NavigationRailDestination(
                    icon: SizedBox(),
                    label: RotatedBox(
                      quarterTurns: -1,
                      child: Text("fast_food".tr()),
                    )),
              ],
            ),
          )),
    );
  }

  void setCurrentButton() {
    switch (context.locale.toString()) {
      case "uz_UZ":
        {
          _langs.forEach((e) {
            if (e.name == 'uz') {
              e.isActive = true;
            } else {
              e.isActive = false;
            }
          });
        }
        break;
      case "ru_RU":
        {
          _langs.forEach((e) {
            if (e.name == 'ru') {
              e.isActive = true;
            } else {
              e.isActive = false;
            }
          });
        }
        break;
      case "en_US":
        {
          _langs.forEach((e) {
            if (e.name == 'en') {
              e.isActive = true;
            } else {
              e.isActive = false;
            }
          });
        }
        break;
    }
  }

  Widget langButton(Lang lang) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(200)),
          color: lang.isActive! ? Color(0xff206498) : Color(0xff2A5270)),
      child: Center(
          child: Text(lang.name!,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
    );
  }

  Widget langBuild() {
    final langProvider = Provider.of<MainProvider>(context, listen: false);
    setCurrentButton();
    return Column(
      children: [
        SizedBox(height: 90),
        ToggleButtons(
          selectedBorderColor: Color(0xff2A5270),
          fillColor: Colors.transparent,
          direction: Axis.vertical,
          children: <Widget>[
            langButton(_langs[0]),
            langButton(_langs[1]),
            langButton(_langs[2]),
          ],
          onPressed: (int index) {
            setState(() {
              _langs.forEach((e) {
                e.isActive = false;
              });
              switch (index) {
                case 0:
                  {
                    context.setLocale(Locale("uz", "UZ"));
                    langProvider.langChanged();
                  }
                case 1:
                  {
                    context.setLocale(Locale("ru", "RU"));
                    langProvider.langChanged();
                  }
                case 2:
                  {
                    context.setLocale(Locale("en", "US"));
                    langProvider.langChanged();
                  }
              }
              _langs[index].isActive = true;
            });
          },
          isSelected: _langs.map((e) => e.isActive = true).toList(),
        ),
      ],
    );
  }
}
