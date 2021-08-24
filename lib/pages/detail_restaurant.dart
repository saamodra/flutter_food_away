import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_away/components/app_bar.dart';
import 'package:food_away/config/fa_appbar_background.dart';
import 'package:food_away/config/fa_appbar_type.dart';
import 'package:food_away/models/restaurant_item.dart';
import 'package:food_away/config/fa_color.dart' as FaColor;

var detailRestaurantSubtitleStyle = TextStyle(
    fontFamily: 'OpenSans',
    fontSize: 16,
    color: Colors.black87
);

class DetailRestaurant extends StatefulWidget {
  // RestaurantItem restaurantItem;

  // DetailRestaurant({required this.restaurantItem});

  @override
  _DetailRestaurantState createState() => _DetailRestaurantState();
}

class _DetailRestaurantState extends State<DetailRestaurant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FaAppBar(
        faAppBarType: FaAppBarType.WithBackLeading,
        faAppBarBackground: FaAppBarBackground.Filled,
        scrollController: null
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 350,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("images/melting_pot.jpg"),
                  )),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text("Melting Pot",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'OpenSansBold',
                        fontSize: 28,
                      )),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      children: [
                        Icon(Icons.location_city),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text("Medan", style: detailRestaurantSubtitleStyle),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      children: [
                        Icon(Icons.location_on),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text("Jln. Pandeglang no 19", style: detailRestaurantSubtitleStyle)
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      children: [
                        Icon(Icons.star),
                        Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text("4.2", style: detailRestaurantSubtitleStyle)
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10, bottom: 10, right: 10),
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Text("Italia", style: TextStyle(
                          fontSize: 15,
                          color: Colors.black45
                        )),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10, bottom: 10, right: 10),
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Text("Modern", style: TextStyle(
                            fontSize: 15,
                            color: Colors.black45
                        )),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border(top: BorderSide(color: Colors.black12, width: 1))
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text("Menu",
                            style: TextStyle(
                              fontSize: 22,
                              fontFamily: 'OpenSansBold',
                              color: FaColor.orangePrimary
                            )
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}