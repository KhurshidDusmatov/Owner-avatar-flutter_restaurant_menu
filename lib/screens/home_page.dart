import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:restaurant_menu/screens/details_page.dart';

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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Row(
      children: [
        NavigationRail(
          onDestinationSelected: (int index){
            setState(() {
              _selectedIndex = index;
            });
          },
          selectedIndex: _selectedIndex,
          backgroundColor: Color(0xff2A5270),
          labelType: NavigationRailLabelType.all,
          selectedLabelTextStyle: TextStyle(color: Colors.white, fontSize: 24.0),
          unselectedLabelTextStyle: TextStyle(color: Colors.white70, fontSize: 18.0),
          groupAlignment: 0.5,
          destinations: [
            NavigationRailDestination(
                icon: SizedBox(),
                label: RotatedBox(
                  quarterTurns: -1,
                  child: Text("Блюда"),
                )),
            NavigationRailDestination(
                icon: SizedBox(),
                label: RotatedBox(
                  quarterTurns: -1,
                  child: Text("Салаты"),
                )),
            NavigationRailDestination(
                icon: SizedBox(),
                label: RotatedBox(
                  quarterTurns: -1,
                  child: Text("Напитки"),
                )),
            NavigationRailDestination(
                icon: SizedBox(),
                label: RotatedBox(
                  quarterTurns: -1,
                  child: Text("Fast Food"),
                )),
          ],
        )
      ],
    ));
  }
}
