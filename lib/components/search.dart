import 'package:flutter/material.dart';
import 'package:telecare/size_config.dart';
import 'package:telecare/utils/colours.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getScreenHeight(50),
      decoration: BoxDecoration(
        color: CBLACK.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        onChanged: (value) => print(value),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                horizontal: getScreenWidth(20), vertical: getScreenWidth(17)),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: "Search",
            suffixIcon: Icon(Icons.search)),
      ),
    );
  }
}
