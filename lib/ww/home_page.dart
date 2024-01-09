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
  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    await Future.delayed(const Duration(seconds: 2));
    FlutterNativeSplash.remove();
  }

  bool _isVisible = true;
  // Color? _color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isVisible = !_isVisible;
                  // if(_color == Colors.red){
                  //   _color = Colors.green;
                  // }else if(_color==Colors.green)(
                  // _color = Colors.red
                  // );
                });
              },
              child: Text(
                "Animation",
                style: TextStyle(fontSize: 24.0),
              ),
            ),
            SizedBox(
              height: 26.0,
            ),
            AnimatedOpacity(
              opacity: _isVisible ? 1.0 : 0.0,
              duration: Duration(milliseconds: 500),
              child: Container(
                height: 120,
                width: 120,
                color: Colors.red,
              ),
            ),
            SizedBox(
              height: 26.0,
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).push(_createRoute());
              },
              child: Text("Details Page"),
            ),
            SizedBox(
              height: 26.0,
            ),
            BouncingWidget(
                duration: Duration(milliseconds: 150),
                scaleFactor: 0.7,
                child: Container(
                  height: 120,
                  width: 120,
                  color: Colors.red,
                ),
                onPressed:(){}
            )
          ],
        ),
      ),
    );
  }


  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => DetailsPage(1),
      transitionsBuilder: (context, animation, secondaryAnimation, child){
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.slowMiddle;
        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
