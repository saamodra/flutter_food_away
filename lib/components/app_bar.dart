import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_away/config/fa_color.dart' as FaColor;
import 'dart:developer' as developer;

class FaAppBar extends StatefulWidget implements PreferredSizeWidget {
  final ScrollController scrollController;

  FaAppBar({required this.scrollController});

  @override
  _FaAppBarState createState() => _FaAppBarState(scrollController: scrollController);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _FaAppBarState extends State<FaAppBar> with SingleTickerProviderStateMixin {
  ScrollController scrollController;
  late AnimationController animController;
  late Animation<double> animation;
  bool lastStatus = false;

  _FaAppBarState({required this.scrollController});


  @override
  void initState() {
    super.initState();
    scrollController.addListener(_scrollListener);

    animController = AnimationController(
      duration: Duration(milliseconds: 250),
        vsync: this);

    final curvedAnimation = CurvedAnimation(
        parent: animController,
        curve: Curves.easeInOut
    );

    animation = Tween<double>(begin: 0, end: 1)
        .animate(curvedAnimation)..addListener(() {
          setState(() { });
    });

  }


  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Image.asset("images/fa-logo.png"),
          ),
          Container(
            margin: const EdgeInsets.only(left: 5),
            child: Text(!lastStatus ? "" : "Food Away", style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: FaColor.orangePrimary.withOpacity(animation.value)
            ))
          )
        ],
      ),
      titleSpacing: 35,
      backgroundColor: Colors.white.withOpacity(animation.value),
    );
  }

  _scrollListener() {
    if (isShrink != lastStatus) {
      setState(() {
        lastStatus = isShrink;
        if (isShrink) {
          animController.forward();
        } else {
          animController.reverse();
        }
      });
    }
  }

  bool get isShrink {
    return scrollController.hasClients &&
        scrollController.offset > 0;
  }

  @override
  void dispose() {
    scrollController.removeListener(_scrollListener);
    super.dispose();
  }
}


