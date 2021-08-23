import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class FaAppBar extends StatefulWidget {
  // ScrollController scrollController;
  int positions = 0;

  // FaAppBar({required this.scrollController});

  @override
  _FaAppBarState createState() => _FaAppBarState();
}

class _FaAppBarState extends State<FaAppBar> {


  @override
  Widget build(BuildContext context) {
    developer.log(widget.positions.toString(), name: 'app_bar');
    return AppBar(
      title: IconButton(
        onPressed: () {},
        icon: Image.asset("images/fa-logo.png"),
      ),
      titleSpacing: 35,
      backgroundColor: Colors.transparent,
    );
  }

  @override
  void initState() {
  }
}


