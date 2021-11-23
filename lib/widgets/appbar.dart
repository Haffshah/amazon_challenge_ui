import 'package:amazon_challenge_ui/config/colors.dart';
import 'package:flutter/material.dart';

AppBar appBar() {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Container(
      height: 25,
      width: 80,
      child: Image.asset("assets/images/amazon_logo.png"),
    ),
    leading: IconButton(
      onPressed: () {},
      icon: Icon(Icons.menu),
      color: ColorsPalate.iconColor,
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications_none,
            color: ColorsPalate.iconColor,
          ),
        ),
      )
    ],
  );
}
