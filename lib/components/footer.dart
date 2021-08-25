
import 'package:flutter/cupertino.dart';
import 'package:food_away/config/fa_color.dart' as FaColor;

class FaFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: FaColor.secondary, width: 0.1)
      ),
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset("images/fa-logo.png", width: 50, height: 50,),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text("Food Away", style: TextStyle(
                    fontSize: 26,
                    fontFamily: 'OpenSansBold',
                    color: FaColor.orangePrimary
                )),
              )
            ],
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              child: Text("Dapatkan info mengenai restoran terbaik di sekitarmu hanya di Food Away.",
                style: TextStyle(
                    fontSize: 18,
                    height: 1.5,
                    fontFamily: 'OpenSans',
                    color: FaColor.secondary
                ),
              )
          ),
          Container(
            padding: const EdgeInsets.only(top: 20),
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(width: 0.2, color: FaColor.secondary)
                )
            ),
            child: Text("2021 © Samodra", textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'OpenSans',
                  color: Color(0xff737373)
              ),
            ),
          )
        ],
      ),
    );
  }
}