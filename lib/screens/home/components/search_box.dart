import 'package:flutter/material.dart';

import '../../../constants.dart';

class searchBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.65,
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        onChanged: (value) => print(value),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                horizontal:20 ,
                vertical:9 ),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: "جستجو محصول ...",
            hintStyle: TextStyle(
                fontSize: 14
            ),
            prefixIcon: RotatedBox(
              quarterTurns:1,
              child: Icon(
                Icons.search,


              ),
            )),
      ),
    );
  }
}