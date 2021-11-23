import 'package:amazon_challenge_ui/config/colors.dart';
import 'package:amazon_challenge_ui/widgets/small_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewCategoryItems extends StatelessWidget {
  final String title;
  final String image;
  final num price;

  const GridViewCategoryItems({
    Key? key,
    required this.title,
    required this.image,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.grey.withOpacity(0.8),
                Colors.white
              ],
            ),),
        height: 220,
        width: 150,
        child: GridTile(
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
          footer: Container(
            color: Colors.grey.withOpacity(0.7),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 4),
                      child: Container(width: 100,
                        child: Text(
                          title,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 4),
                      child: Text(
                        r"$ " + "$price",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: ColorsPalate.priceColor,
                            fontSize: 16),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 5),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: SmallButtonforadd(),
                )
              ],
            ),
          ),
          header: Container(
            child: Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.heart,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
