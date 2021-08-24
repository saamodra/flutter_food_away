import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_away/config/fa_appbar_background.dart';
import 'package:food_away/config/fa_appbar_type.dart';
import 'package:food_away/config/fa_color.dart' as FaColor;
import 'dart:developer' as developer;

class FaAppBar extends StatefulWidget implements PreferredSizeWidget {
  final ScrollController? scrollController;
  final FaAppBarBackground faAppBarBackground;
  final FaAppBarType faAppBarType;

  FaAppBar({required this.faAppBarType, required this.faAppBarBackground, required this.scrollController});

  @override
  _FaAppBarState createState() => _FaAppBarState(
    faAppBarType: faAppBarType,
    faAppBarBackground: faAppBarBackground,
    scrollController: scrollController
  );

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _FaAppBarState extends State<FaAppBar> with SingleTickerProviderStateMixin {
  ScrollController? scrollController;
  late AnimationController animController;
  late Animation<double> animation;
  bool lastStatus = false;
  FaAppBarBackground faAppBarBackground;
  FaAppBarType faAppBarType;

  _FaAppBarState({required this.faAppBarType, required this.faAppBarBackground, required this.scrollController});


  @override
  void initState() {
    super.initState();
    if(faAppBarBackground == FaAppBarBackground.Dynamic) {
      scrollController!.addListener(_scrollListener);

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
  }

  double getAppBarOpacity() {
    switch(faAppBarBackground) {
      case FaAppBarBackground.Dynamic:
        return animation.value;
      case FaAppBarBackground.Filled:
        return 1;
      default:
        return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: faAppBarType == FaAppBarType.NoLeading ? null : IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios, color: FaColor.orangePrimary),
      ),
      title: faAppBarType == FaAppBarType.WithBackLeading ? null : Row(
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
              color: FaColor.orangePrimary.withOpacity(getAppBarOpacity())
            ))
          )
        ],
      ),
      titleSpacing: 35,
      backgroundColor: Colors.white.withOpacity(getAppBarOpacity()),
      brightness: Brightness.dark
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
    return scrollController!.hasClients &&
        scrollController!.offset > 0;
  }

  @override
  void dispose() {
    if(faAppBarBackground == FaAppBarBackground.Dynamic) {
      scrollController!.removeListener(_scrollListener);
    }

    super.dispose();
  }
}


