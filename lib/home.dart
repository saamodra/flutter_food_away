import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_away/config/fa_color.dart' as FaColor;

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Scaffold(
              backgroundColor: Colors.transparent,
              extendBodyBehindAppBar: true,
              appBar: AppBar(
                title: Text("Food Away"),
                backgroundColor: Colors.transparent,
                leading: IconButton(
                  onPressed: () {},
                  icon: Container(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset("images/fa-logo.png"),
                  ),
                ),
              ),
              body: Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 450,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("images/hero-image-overlay.jpg"),
                            )
                        ),
                      ),
                      Positioned(
                        top: 80,
                        left: 40,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Food Away",
                              style: TextStyle(
                                  fontFamily: 'OpenSansBold',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40,
                                  color: Colors.white
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 15),
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: Text("Food Away akan membantu kamu untuk mencari restoran terbaik di sekitarmu dengan mudah. Yuk mulai!",
                                style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  fontSize: 20,
                                  color: Colors.white
                                ),
                              ),
                            )
                          ],
                        )
                      ),

                    ]
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}