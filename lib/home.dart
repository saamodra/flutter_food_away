import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_away/config/fa_color.dart' as FaColor;
import 'package:food_away/model/restaurant_item.dart';
import 'dart:developer' as developer;

class Home extends StatelessWidget {
  final String _search = "";


  @override
  Widget build(BuildContext context) {
    developer.log(restaurantList.length.toString(), name: 'my.app.category');
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Scaffold(
              backgroundColor: Colors.transparent,
              extendBodyBehindAppBar: true,
              appBar: AppBar(
                title: IconButton(
                  onPressed: () {},
                  icon: Image.asset("images/fa-logo.png"),
                ),
                titleSpacing: 35,
                backgroundColor: Colors.transparent,
              ),
              body: SingleChildScrollView(
                physics: ScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(alignment: Alignment.center, children: [
                      Container(
                        height: 450,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images/hero-image-overlay.jpg"),
                        )),
                      ),
                      Positioned(
                          top: 80,
                          left: 0,
                          width: MediaQuery.of(context).size.width,
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Food Away",
                                  style: TextStyle(
                                      fontFamily: 'OpenSansBold',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40,
                                      color: Colors.white),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 15),
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  child: Text(
                                    "Food Away akan membantu kamu untuk mencari restoran terbaik di sekitarmu dengan mudah. Yuk mulai!",
                                    style: TextStyle(
                                        fontFamily: 'OpenSans',
                                        fontSize: 20,
                                        color: Colors.white),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 20.0),
                                  child: IntrinsicHeight(
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Expanded(
                                          flex: 10,
                                          child: TextField(
                                            decoration: InputDecoration(
                                              filled: true,
                                              hintText: "Search restaurants...",
                                              fillColor: FaColor.grey,
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: 30,
                                                      vertical: 20),
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  5.0),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  5.0))),
                                            ),
                                            onChanged: (value) {
                                              // _search = value;
                                            },
                                          ),
                                        ),
                                        Expanded(
                                            flex: 2,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: FaColor.orangePrimary,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topRight:
                                                              Radius.circular(
                                                                  5.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  5.0))),
                                              child: IconButton(
                                                icon: Icon(
                                                  Icons.search,
                                                  color: Colors.white,
                                                ),
                                                onPressed: () {},
                                              ),
                                            ))
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )),
                    ]),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 35),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Eksplor Restoran",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontFamily: 'OpenSansBold',
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              top: 5,
                            ),
                            child: Text(
                              "Beberapa restoran pilihan",
                              style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  fontSize: 16,
                                  color: Color(0xff585858)),
                            ),
                          ),
                          ListView.builder(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: restaurantList.length,
                            itemBuilder: (context, index) {
                              final RestaurantItem restaurantItem = restaurantList[index];

                              return InkWell(
                                onTap: () {},
                                child: Card(
                                    margin: const EdgeInsets.symmetric(vertical: 10),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: SizedBox(
                                      height: 420,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                        children: [
                                          Expanded(
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                                              child: Image.asset(
                                                "images/" + restaurantItem.pictureUrl,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 210,
                                            child: Container(
                                              padding: const EdgeInsets.all(25),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  RichText(
                                                    overflow: TextOverflow.ellipsis,
                                                    text: TextSpan(
                                                      text: restaurantItem.name,
                                                      style: TextStyle(
                                                          color: FaColor.orangePrimary,
                                                          fontSize: 22.0,
                                                          fontFamily: 'OpenSansBold',
                                                          fontWeight: FontWeight.bold
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: const EdgeInsets.only(top: 12),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Container(
                                                                margin: const EdgeInsets.only(right: 8),
                                                                child: Icon(Icons.location_city)),
                                                            Text(restaurantItem.city, style: TextStyle(
                                                                fontSize: 18,
                                                                color: FaColor.secondary
                                                            ),),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Container(
                                                                margin: const EdgeInsets.only(right: 8),
                                                                child: Icon(Icons.star, color: FaColor.orangePrimary,)
                                                            ),
                                                            Text(restaurantItem.rating.toString(), style: TextStyle(
                                                                fontSize: 18,
                                                                color: FaColor.secondary
                                                            ),),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: const EdgeInsets.symmetric(vertical: 20),
                                                    child: RichText(
                                                      maxLines: 2,
                                                      overflow: TextOverflow.ellipsis,
                                                      text: TextSpan(
                                                        text: restaurantItem.description,
                                                        style: TextStyle(
                                                            height: 1.5,
                                                            fontSize: 18,
                                                            color: FaColor.secondary
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                ),
                              );
                            },
                          )
                        ],
                      )
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
