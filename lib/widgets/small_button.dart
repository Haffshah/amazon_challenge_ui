

import 'package:amazon_challenge_ui/config/colors.dart';
import 'package:amazon_challenge_ui/pages/product_details_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SmallButtonforadd extends StatelessWidget {
  const SmallButtonforadd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:30,
      width: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: ColorsPalate.secondaryBackground),
      child: Center(
        child: IconButton(
          onPressed: () {
            Navigator.push(context, CupertinoPageRoute(builder: (context)=> ProductDetailsPage() ));
          },
          icon: Icon(
            CupertinoIcons.add,
            color: Colors.white,size: 16,
          ),
        ),
      ),
    );
  }
}
