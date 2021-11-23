import 'package:amazon_challenge_ui/config/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int currentIndex = 0;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: Container(
        height: 65,
        width: size.width,
        child: BottomAppBar(
          color: ColorsPalate.secondaryBackground,
          shape: CircularNotchedRectangle(),
          notchMargin: 8.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(
                  Icons.home,
                  color: currentIndex == 0
                      ? ColorsPalate.background
                      : Colors.grey.shade400,
                ),
                onPressed: () {
                  setBottomBarIndex(0);
                },
                splashColor: Colors.white,
              ),
              IconButton(
                  icon: Icon(
                    Icons.message_outlined,
                    color: currentIndex == 1
                        ? ColorsPalate.background
                        : Colors.grey.shade400,
                  ),
                  onPressed: () {
                    setBottomBarIndex(1);
                  }),
              Container(
                width: size.width * 0.20,
              ),
              IconButton(
                  icon: Icon(
                    CupertinoIcons.heart_fill,
                    color: currentIndex == 2
                        ? ColorsPalate.background
                        : Colors.grey.shade400,
                  ),
                  onPressed: () {
                    setBottomBarIndex(2);
                  }),
              IconButton(
                icon: Icon(
                  Icons.perm_identity_outlined,
                  color: currentIndex == 3
                      ? ColorsPalate.background
                      : Colors.grey.shade400,
                ),
                onPressed: () {
                  setBottomBarIndex(3);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
