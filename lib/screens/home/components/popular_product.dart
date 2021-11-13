import 'package:first_app/components/product_card.dart';
import 'package:flutter/material.dart';

import '../../../data.dart';
class PopularProducts extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only( left: 14.0, right: 14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'پرفروشترین محصولات',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              GestureDetector(
                onTap: (){},
                child: Text(
                  "بیشتر",
                  style: TextStyle(color: Color(0xFFBBBBBB)),
                ),
              ),
            ],
          ),
        ),
        //end of popular title box
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                product.length,
                    (index) {
                  if (product[index].isPopular)
                    return ProductCard(product: product[index]);

                  return SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
              SizedBox(width: 20),
            ],
          ),
        )
      ],
    );
  }
}