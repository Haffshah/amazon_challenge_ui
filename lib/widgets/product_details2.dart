import 'package:amazon_challenge_ui/config/colors.dart';
import 'package:flutter/material.dart';

class ProductDeatils2 extends StatelessWidget {
  const ProductDeatils2({
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
          "Material: " + "Cotton".toUpperCase(),
          style: TextStyle(
              color: ColorsPalate.secondaryBackground,
              fontSize: 14),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Origin: " + "CN".toUpperCase(),
          style: TextStyle(
              color: ColorsPalate.secondaryBackground,
              fontSize: 14),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Gender: " + "Women".toUpperCase(),
          style: TextStyle(
              color: ColorsPalate.secondaryBackground,
              fontSize: 14),
        ),
      ],
    );
  }
}