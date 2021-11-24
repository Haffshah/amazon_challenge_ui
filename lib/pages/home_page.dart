import 'package:amazon_challenge_ui/config/colors.dart';
import 'package:amazon_challenge_ui/config/constant.dart';
import 'package:amazon_challenge_ui/widgets/Cateogry_List.dart';
import 'package:amazon_challenge_ui/widgets/ProductListWidget.dart';
import 'package:amazon_challenge_ui/widgets/appbar.dart';
import 'package:amazon_challenge_ui/widgets/navigation_bar.dart';
import 'package:amazon_challenge_ui/widgets/searchbar.dart';
import 'package:amazon_challenge_ui/widgets/setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Scaffold(
        backgroundColor: ColorsPalate.background,
        appBar: appBar(),
        body: Container(
          child: ListView(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 8,
                    child: SearchBar(
                      length: 0.70,
                      hintText: Constant.hintText,
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: Setting(),
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12, top: 12),
                child: Text(
                  Constant.cateGory,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
                child: BuildIconsList(),
              ),
              Padding(
                padding: const EdgeInsets.all(
                  12.0,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Top Selling",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        Constant.seeAll,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProductListinRow(
                        title: "Women Dress",
                        subtitle: "Pink",
                        price: 350,
                        image: "assets/icons/women.jpg"),
                    ProductListinRow(
                        title: "Shoes",
                        subtitle: "white",
                        price: 299,
                        image: "assets/icons/shoes.png"),
                    ProductListinRow(
                        title: "Headphone",
                        subtitle: "Golden",
                        price: 150,
                        image: "assets/icons/gadget.jpg"),
                    ProductListinRow(
                        title: "Asus Laptop",
                        subtitle: "Grey",
                        price: 200,
                        image: "assets/icons/Laptop.png"),
                    ProductListinRow(
                        title: "Ps 5",
                        subtitle: "Dark Edition",
                        price: 456,
                        image: "assets/icons/game.png"),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.shopping_cart_outlined),
          backgroundColor: ColorsPalate.secondaryBackground,
        ),
        bottomNavigationBar: NavigationBar(),
      ),
    );
  }
}
