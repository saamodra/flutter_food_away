import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_away/components/app_bar.dart';
import 'package:food_away/components/footer.dart';
import 'package:food_away/components/like_button.dart';
import 'package:food_away/config/fa_appbar_background.dart';
import 'package:food_away/config/fa_appbar_type.dart';
import 'package:food_away/models/restaurant_item.dart';
import 'package:food_away/config/fa_color.dart' as FaColor;

var detailRestaurantSubtitleStyle =
    TextStyle(fontFamily: 'OpenSans', fontSize: 16, color: Colors.black87);

var detailRestaurantSectionTitleStyle = TextStyle(
    fontSize: 22, fontFamily: 'OpenSansBold', color: FaColor.orangePrimary);

class DetailRestaurant extends StatefulWidget {
  RestaurantItem restaurantItem;

  DetailRestaurant({required this.restaurantItem});

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
          scrollController: null),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 350,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("images/" + widget.restaurantItem.pictureUrl),
                  )),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  if(constraints.maxWidth <= 600) {
                    return DetailRestaurantMobile(restaurantItem: widget.restaurantItem,);
                  } else {
                    return DetailRestaurantDesktop(restaurantItem: widget.restaurantItem);
                  }
                },
              ),
            ),
            FaFooter()
          ],
        ),
      ),
    );
  }
}


class DetailRestaurantMobile extends StatelessWidget {
  RestaurantItem restaurantItem;

  DetailRestaurantMobile({required this.restaurantItem});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(restaurantItem.name,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: 'OpenSansBold',
                    fontSize: 28,
                  )),
            ),
            FavoriteButton()
          ],
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: [
              Icon(Icons.location_city),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(restaurantItem.city,
                    style: detailRestaurantSubtitleStyle),
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
                  child: Text(restaurantItem.address,
                      style: detailRestaurantSubtitleStyle)),
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
                  child: Text(restaurantItem.rating.toString(),
                      style: detailRestaurantSubtitleStyle)),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20),
          child: Wrap(
              direction: Axis.horizontal,
              spacing: 8.0,
              runSpacing: 8.0,
              children: restaurantItem.categories.map((category) {
                return Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius:
                      BorderRadius.all(Radius.circular(20))),
                  child: Text(category,
                      style: TextStyle(
                          fontSize: 15, color: Colors.black45)),
                );
              }).toList()
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20),
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(color: Colors.black12, width: 1))),
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Menu", style: detailRestaurantSectionTitleStyle),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0),
                          child: Text("Makanan",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'OpenSansBold',
                                  color: Colors.black)),
                        ),
                        for(var food in restaurantItem.foodMenus)
                          Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 5, right: 5),
                            child: Row(
                              children: [
                                Container(
                                    margin: const EdgeInsets.only(right: 6),
                                    child: Icon(Icons.brightness_1_outlined, size: 10,)
                                ),
                                Flexible(
                                  child: Text(food,
                                    style: TextStyle(
                                        fontFamily: 'OpenSans', fontSize: 17),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ,
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                          const EdgeInsets.symmetric(vertical: 8),
                          child: Text("Minuman",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'OpenSansBold',
                                  color: Colors.black)),
                        ),
                        for(var drink in restaurantItem.drinkMenus)
                          Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 5, right: 5),
                            child: Row(
                              children: [
                                Container(
                                    margin: const EdgeInsets.only(right: 6),
                                    child: Icon(Icons.brightness_1_outlined, size: 10,)
                                ),
                                Flexible(
                                  child: Text(drink,
                                    style: TextStyle(
                                        fontFamily: 'OpenSans', fontSize: 17),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ,
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20),
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(color: Colors.black12, width: 1))),
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Deskripsi",
                  style: detailRestaurantSectionTitleStyle),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Text(restaurantItem.description,
                    style: TextStyle(
                        fontSize: 18,
                        height: 1.7,
                        fontFamily: 'OpenSans',
                        color: Colors.black87)),
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20),
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(color: Colors.black12, width: 1))),
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: Text("Ulasan Pelanggan",
                    style: detailRestaurantSectionTitleStyle),
              ),
              Column(
                children: restaurantItem.customerReviews.map((customerReview) {
                  return Container(
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        border:
                        Border.all(color: Colors.black12, width: 1),
                        borderRadius:
                        BorderRadius.all(Radius.circular(12))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(customerReview.name,
                                style: TextStyle(
                                    fontFamily: 'OpenSansBold',
                                    fontSize: 17)),
                            Text(customerReview.date,
                              style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  fontSize: 17,
                                  color: FaColor.secondary),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(customerReview.review,
                              style: TextStyle(
                                  fontSize: 16,
                                  height: 1.5,
                                  fontFamily: 'OpenSans',
                                  color: Colors.black87)),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class DetailRestaurantDesktop extends StatelessWidget {
  RestaurantItem restaurantItem;

  DetailRestaurantDesktop({required this.restaurantItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.75,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(restaurantItem.name,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'OpenSansBold',
                          fontSize: 28,
                        )),
                  ),
                  FavoriteButton()
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: [
                    Icon(Icons.location_city),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(restaurantItem.city,
                          style: detailRestaurantSubtitleStyle),
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
                        child: Text(restaurantItem.address,
                            style: detailRestaurantSubtitleStyle)),
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
                        child: Text(restaurantItem.rating.toString(),
                            style: detailRestaurantSubtitleStyle)),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Wrap(
                    direction: Axis.horizontal,
                    spacing: 8.0,
                    runSpacing: 8.0,
                    children: restaurantItem.categories.map((category) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius:
                            BorderRadius.all(Radius.circular(20))),
                        child: Text(category,
                            style: TextStyle(
                                fontSize: 15, color: Colors.black45)),
                      );
                    }).toList()
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(color: Colors.black12, width: 1))),
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Menu", style: detailRestaurantSectionTitleStyle),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8.0),
                                child: Text("Makanan",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontFamily: 'OpenSansBold',
                                        color: Colors.black)),
                              ),
                              for(var food in restaurantItem.foodMenus)
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, bottom: 5, right: 5),
                                  child: Row(
                                    children: [
                                      Container(
                                          margin: const EdgeInsets.only(right: 6),
                                          child: Icon(Icons.brightness_1_outlined, size: 10,)
                                      ),
                                      Flexible(
                                        child: Text(food,
                                          style: TextStyle(
                                              fontFamily: 'OpenSans', fontSize: 17),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ,
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                const EdgeInsets.symmetric(vertical: 8),
                                child: Text("Minuman",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontFamily: 'OpenSansBold',
                                        color: Colors.black)),
                              ),
                              for(var drink in restaurantItem.drinkMenus)
                                Padding(
                                  padding: const EdgeInsets.only(top: 5, bottom: 5, right: 5),
                                  child: Row(
                                    children: [
                                      Container(
                                          margin: const EdgeInsets.only(right: 6),
                                          child: Icon(Icons.brightness_1_outlined, size: 10,)
                                      ),
                                      Flexible(
                                        child: Text(drink,
                                          style: TextStyle(
                                              fontFamily: 'OpenSans', fontSize: 17),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ,
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(color: Colors.black12, width: 1))),
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Deskripsi",
                        style: detailRestaurantSectionTitleStyle),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Text(restaurantItem.description,
                          style: TextStyle(
                              fontSize: 18,
                              height: 1.7,
                              fontFamily: 'OpenSans',
                              color: Colors.black87)),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(color: Colors.black12, width: 1))),
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Text("Ulasan Pelanggan",
                          style: detailRestaurantSectionTitleStyle),
                    ),
                    Column(
                      children: restaurantItem.customerReviews.map((customerReview) {
                        return Container(
                          margin: const EdgeInsets.only(top: 10),
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              border:
                              Border.all(color: Colors.black12, width: 1),
                              borderRadius:
                              BorderRadius.all(Radius.circular(12))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(customerReview.name,
                                      style: TextStyle(
                                          fontFamily: 'OpenSansBold',
                                          fontSize: 17)),
                                  Text(customerReview.date,
                                    style: TextStyle(
                                        fontFamily: 'OpenSans',
                                        fontSize: 17,
                                        color: FaColor.secondary),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(customerReview.review,
                                    style: TextStyle(
                                        fontSize: 16,
                                        height: 1.5,
                                        fontFamily: 'OpenSans',
                                        color: Colors.black87)),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
