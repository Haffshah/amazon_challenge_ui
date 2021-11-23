import 'package:amazon_challenge_ui/config/colors.dart';
import 'package:amazon_challenge_ui/widgets/product_details1.dart';
import 'package:amazon_challenge_ui/widgets/product_details2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    String sizevalue = 'M';
    String colorvalue = 'Black';
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black87),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Product Details",
          style: TextStyle(color: Colors.black87),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: IconButton(
                onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined)),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Stack(
            children: [
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      "assets/icons/women.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.share),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(CupertinoIcons.heart_fill),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  child: Row(
                    children: [
                      Text(
                        "Women's Dress",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Spacer(),
                      Text(
                        r"$ " + "350",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: ColorsPalate.priceColor),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(flex: 50,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: DropdownButton<String>(
                          value: sizevalue,
                          icon: const Icon(
                            Icons.keyboard_arrow_down_sharp,
                          ),
                          iconSize: 26,
                          elevation: 16,
                          onChanged: (String? newValue) {
                            setState(() {
                              sizevalue = newValue!;
                            });
                          },
                          items: <String>['M', 'L', 'XL', 'XXL']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 50,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: DropdownButton<String>(
                          value: colorvalue,
                          icon: const Icon(
                            Icons.keyboard_arrow_down_sharp,
                          ),
                          iconSize: 26,
                          elevation: 16,
                          onChanged: (String? newValue) {
                            setState(() {
                              colorvalue = newValue!;
                            });
                          },
                          items: <String>['Black', 'White', 'Cyan', 'Royal Gold']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 50,
                        child: ProductDetails1(),
                      ),
                      Expanded(
                        flex: 50,
                        child: ProductDeatils2(),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: ColorsPalate.secondaryBackground,
                  fixedSize: Size(MediaQuery.of(context).size.height * 1, 50)),
              onPressed: () {},
              child: Text(
                "Add to Cart",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          )
        ],
      ),
    );
  }
}
