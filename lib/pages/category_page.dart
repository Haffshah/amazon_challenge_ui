import 'package:amazon_challenge_ui/config/constant.dart';
import 'package:amazon_challenge_ui/widgets/CategoryPageItems.dart';
import 'package:amazon_challenge_ui/widgets/SearchBarRight.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'All';
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBarRight(length: 1, hintText: Constant.hintText),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: DropdownButton<String>(
                  value: dropdownValue,
                  icon: const Icon(
                    Icons.keyboard_arrow_down_sharp,
                  ),
                  iconSize: 26,
                  elevation: 16,
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: <String>['All', 'High', 'Low', 'Medium']
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: new GridView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10),
                    children: <Widget>[
                      GridViewCategoryItems(
                        price: 200,
                        image: "assets/icons/shoes.png",
                        title: "Shoes",
                      ),
                      GridViewCategoryItems(
                        price: 356,
                        image: "assets/icons/women.jpg",
                        title: "Dress",
                      ),
                      GridViewCategoryItems(
                        price: 456,
                        image: "assets/icons/gadget.jpg",
                        title: "HeadPhones",
                      ),
                      GridViewCategoryItems(
                        price: 98,
                        image: "assets/icons/Laptop.png",
                        title: "Electronics",
                      ),
                      GridViewCategoryItems(
                        price: 354,
                        image: "assets/icons/game.png",
                        title: "Games",
                      ),
                      GridViewCategoryItems(
                        price: 354,
                        image: "assets/icons/men.jpg",
                        title: "Shoes",
                      ),
                      GridViewCategoryItems(
                        price: 354,
                        image: "assets/icons/game.png",
                        title: "Shoes",
                      ),
                      GridViewCategoryItems(
                        price: 354,
                        image: "assets/icons/game.png",
                        title: "Shoes",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),);
  }
}
