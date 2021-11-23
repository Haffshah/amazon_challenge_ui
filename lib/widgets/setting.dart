

import 'package:amazon_challenge_ui/config/colors.dart';
import 'package:amazon_challenge_ui/pages/category_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:60,
      width: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: ColorsPalate.secondaryBackground),
      child: IconButton(
        onPressed: () {
          Navigator.push(context, CupertinoPageRoute(builder: (context)=> CategoryPage() ));
        },
        icon: Icon(
          CupertinoIcons.slider_horizontal_3,
          color: Colors.white,
        ),
      ),
    );
  }
}
//  CupertinoIcons.slider_horizontal_3