import 'package:amazon_challenge_ui/config/colors.dart';
import 'package:flutter/material.dart';

class ProductDetails1 extends StatelessWidget {
  const ProductDetails1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Brand Name: " + "Bsethlra".toUpperCase(),
          style: TextStyle(
              color: ColorsPalate.secondaryBackground,
              fontSize: 14),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Style: " + "Casual".toUpperCase(),
          style: TextStyle(
              color: ColorsPalate.secondaryBackground,
              fontSize: 14),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Season: " + "Winter".toUpperCase(),
          style: TextStyle(
              color: ColorsPalate.secondaryBackground,
              fontSize: 14),
        ),
      ],
    );
  }
}


