import 'package:first_app/models/product.dart';

import 'package:first_app/screens/product_detail/product_details.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.width = 140,
    this.aspectRetio = 1.02,
    required this.product,
  }) : super(key: key);

  final double width, aspectRetio;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20,top: 8),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.4,
        height: MediaQuery.of(context).size.height * 0.3,
        child: GestureDetector(
          onTap:() => Navigator.pushNamed(
          context,
          ProductDetail.routeName,
          arguments: ProductDetailsArguments(product: product),
        ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              AspectRatio(
                aspectRatio: 1.02,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Hero(
                    tag: product.id.toString(),
                    child: Image.asset(product.imgPath[0]),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                product.title,
                style: TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              SizedBox(height: 5,),
              Spacer(),
              Column(

                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 13.0),
                      child: Text(
                        " تومان${product.price}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          color: kPrimaryColor,
                        ),
                      ),
                    ),

                  ],
                ),

            ],
          ),
        ),
      ),
    );
  }
}
//like icon button
/*InkWell(
                      borderRadius: BorderRadius.circular(50),
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(8),
                        height: 28,
                        width: 28,
                        decoration: BoxDecoration(
                          color: product.isFavourite
                              ? kPrimaryColor.withOpacity(0.15)
                              : kSecondaryColor.withOpacity(0.1),
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/Heart Icon_2.svg",
                          color: product.isFavourite
                              ? Color(0xFFFF4848)
                              : Color(0xFFDBDEE4),
                        ),
                      ),
                    ),*/