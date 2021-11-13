import 'package:first_app/components/offer_card.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../data.dart';
import 'offer_title_box.dart';

class OfferSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row (
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

        Container(
          height: MediaQuery.of(context).size.height * 0.4,
          width: MediaQuery.of(context).size.width * 1/3,
          decoration: BoxDecoration(
              color: kPrimaryColor
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              OfferTitleBtn(),
            ],
          ),
        ),
        Expanded(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
                color: kPrimaryColor
            ),

            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                      product.length,
                          (index)=> OfferCard(
                        product: product[index],
                      )
                  )
                ],
              ),
            ),
          ),
        ),



      ],
    );
  }
}

