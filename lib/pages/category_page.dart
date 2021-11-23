import 'package:amazon_challenge_ui/config/constant.dart';
import 'package:amazon_challenge_ui/widgets/CategoryPageItems.dart';
import 'package:amazon_challenge_ui/widgets/SearchBarRight.dart';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black87),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "Man's",
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              SearchBarRight(length: 1, hintText: Constant.hintText),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new GridView( shrinkWrap: true,scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
                  children: <Widget>[
                    GridViewCategoryItems(price: 200,image: "assets/icons/men.jpg",title: "Shoes",),
                    GridViewCategoryItems(price: 356,image: "assets/icons/women.jpg",title: "Dress",),
                    GridViewCategoryItems(price: 456,image: "assets/icons/gadget.jpg",title: "HeadPhones",),
                    GridViewCategoryItems(price: 98,image: "assets/icons/electronics.png",title: "Electronics",),
                    GridViewCategoryItems(price: 354,image: "assets/icons/game.png",title: "Shoes",),
                    GridViewCategoryItems(price: 354,image: "assets/icons/game.png",title: "Shoes",),
                    GridViewCategoryItems(price: 354,image: "assets/icons/game.png",title: "Shoes",),
                    GridViewCategoryItems(price: 354,image: "assets/icons/game.png",title: "Shoes",),

                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
