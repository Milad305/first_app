import 'package:first_app/components/category_card.dart';
import 'package:first_app/components/section.dart';
import 'package:flutter/material.dart';

import '../../../data.dart';

class CategoryBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Section(
        title: 'دسته بندی محصولات',
        children: [
          CategoryCard(icon: categories[0].iconPath, text: categories[0].title, press: (){}),
          CategoryCard(icon: categories[1].iconPath, text: categories[1].title, press: (){}),
          CategoryCard(icon: categories[2].iconPath, text: categories[2].title, press: (){}),
          CategoryCard(icon: categories[3].iconPath, text: categories[3].title, press: (){}),
        ],
        press:(){}
    );
  }
}