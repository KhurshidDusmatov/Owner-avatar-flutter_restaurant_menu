import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_menu/screens/details_page.dart';
import 'package:restaurant_menu/utils/navigator_settings.dart';

import '../provider/main_provider.dart';

class ProductItem extends StatefulWidget {
  final meal;
  int index;

  ProductItem(this.meal, this.index, {super.key});

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    final mainProvider = Provider.of<MainProvider>(context, listen: false);
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            elevation: 48.0,
            color: Color(widget.meal.bannerColor!),
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
                          widget.meal.type!,
                          style: TextStyle(color: Color(0xff00195C)),
                        ),
                      ],
                    ),
                    SizedBox(height: 13),
                    SizedBox(
                      height: 86,
                      child: Text(
                        widget.meal.name!,
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
                        Text(widget.meal.cost!,
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
                            Text(widget.meal.time!,
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
                            Text(widget.meal.ingCount.toString() + " инг",
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
                          // Image.asset(
                          //   "assets/images/btn_pls.png",
                          //   height: 50,
                          //   width: 50,
                          // ),
                          IconButton(
                              onPressed: () async {
                                var favList = await mainProvider.getFavList();
                                var newList = List.of(favList);
                                if (!newList.contains(widget.index)) {
                                  newList.add(widget.index);
                                }
                                mainProvider.setFavList(newList);
                              },
                              icon: Icon(Icons.favorite_border_outlined)),
                          Container(
                            height: 50,
                            width: 120,
                            child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                   Navigator.of(context).push(createRoute(DetailsPage(widget.index)));
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
              widget.meal.imageUrl!,
              height: 140,
              width: 140,
            ))
      ],
    );
  }
}
