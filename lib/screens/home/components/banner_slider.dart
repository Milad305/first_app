import 'package:flutter/material.dart';

class bannerSlider extends StatelessWidget {
 String imgPath;
bannerSlider(this.imgPath);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 5,
          left: 14.0,
          right: 14.0
      ),
      child: Container(
        height: 100,
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                '$imgPath',
              ),
              fit: BoxFit.cover

          ),
          color: Color(0xFF4A3298),
          borderRadius: BorderRadius.circular(20),
        ),

      ),
    );
  }
}