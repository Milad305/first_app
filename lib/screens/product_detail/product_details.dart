import 'package:first_app/models/product.dart';
import 'package:first_app/screens/product_detail/components/product_images.dart';
import 'package:flutter/material.dart';
import 'components/color_dots.dart';
import 'components/content_container.dart';
import 'components/custom_app_bar.dart';
import 'components/default_btn.dart';
import 'components/product_description.dart';


class ProductDetail extends StatelessWidget {
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments agrs =
    ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),


      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(

            children: [
              Stack(
                //IMAGE AND BACK BUTTON SHOULD BE STACKED ON EACH OTHER
                children: [
                  CustomAppBar(),
                  ProductImages(product: agrs.product),
                ],
              ),
              TopRoundedContainer(
                color: Colors.white,
                child: Column(
                  children: [
                    ProductDescription(
                      product: agrs.product,
                      pressOnSeeMore: () {},
                    ),
                    TopRoundedContainer(
                      color: Color(0xFFF6F7F9),
                      child: Column(
                        children: [
                          ColorDots(product: agrs.product),
                          TopRoundedContainer(
                            color: Colors.white,
                            child: Expanded(
                              child: Container(
                                height: MediaQuery.of(context).size.height * .16,
                                padding: EdgeInsets.only(
                                  left: MediaQuery.of(context).size.width * 0.15,
                                  right: MediaQuery.of(context).size.width * 0.15,
                                  bottom: 20,
                                  top: 15,
                                ),
                                child: Center(
                                  child: DefaultButton(
                                    text: "افزودن به سبد خرید",
                                    press: () {},
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),


            ],
          ),
        ),
      )
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}