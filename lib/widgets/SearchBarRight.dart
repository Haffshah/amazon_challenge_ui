import 'package:amazon_challenge_ui/config/colors.dart';
import 'package:flutter/material.dart';

class SearchBarRight extends StatefulWidget {
  final num length;
  final String hintText;

  SearchBarRight(
      {Key? key, required this.length, required this.hintText})
      : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBarRight> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        width: MediaQuery.of(context).size.width * widget.length,
        child: TextField(
          controller: _searchController,
          autofocus: false,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: TextStyle(color: ColorsPalate.iconColor, fontSize: 14),
            fillColor: ColorsPalate.background,
            focusColor: Colors.grey,
            filled: true,
            suffixIcon: Icon(
              Icons.search,
              color: ColorsPalate.iconColor,
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide(color: ColorsPalate.iconColor)),
          ),
        ),
      ),
    );
  }
}
