

import 'package:amazon_challenge_ui/Model/categoryModel.dart';
import 'package:amazon_challenge_ui/config/colors.dart';
import 'package:amazon_challenge_ui/pages/category_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final List<CategoryModelData> headerImages = CategoryModelData.icons;

class BuildIconsList extends StatefulWidget {
  const BuildIconsList({Key? key}) : super(key: key);

  @override
  _BuildIconsListState createState() => _BuildIconsListState();
}

class _BuildIconsListState extends State<BuildIconsList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          headerImages.length,
          (index) => Container(
            width: 90,
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => CategoryPage()),
                    );
                  },
                  child: Card(
                    child: Image.asset(
                      headerImages[index].icon,
                      height: 60,
                      width: 60,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  headerImages[index].title,
                  style: TextStyle(
                      fontSize: 16,
                      color: ColorsPalate.secondaryBackground,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
