import 'package:amazon_challenge_ui/config/colors.dart';
import 'package:amazon_challenge_ui/pages/product_details_page.dart';
import 'package:amazon_challenge_ui/widgets/small_button.dart';
import 'package:flutter/material.dart';

class ProductListinRow extends StatelessWidget {
  final String title;
  final String image;
  final String subtitle;
  final num price;
  ProductListinRow({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              color: Colors.grey,
              height: 150,
              width: 120,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(
            title,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          child: Text(
            subtitle,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          child: Row(
            children: [
              Text(r"$ " + "$price",
                  style: TextStyle(
                      color: ColorsPalate.priceColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                width: 50,
              ),
              InkWell(onTap:(){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> ProductDetailsPage()));
              },child: SmallButtonforadd()),
            ],
          ),
        ),
      ],
    );
  }
}
