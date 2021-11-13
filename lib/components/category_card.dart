import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    required this.icon,
    required this.text,
    required this.press,
  }) ;

  final String? icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: 130,
        child: Container(
           padding: EdgeInsets.only(top: 2),
            height: 80,
            width: 130,
            decoration: BoxDecoration(
              color: Color(0xFFFFECDF),
              borderRadius: BorderRadius.circular(10),
            ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 30,
                width: 30,
                child: SvgPicture.asset(icon!),
              ),

              SizedBox(height: 5),
              Text(text!, textAlign: TextAlign.center)
            ]
          ),

        )
      ),
    );
  }
}

