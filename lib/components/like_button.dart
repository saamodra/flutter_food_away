
import 'package:flutter/material.dart';
import 'package:food_away/config/fa_color.dart' as FaColor;

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 35,
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: FaColor.orangePrimary,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
