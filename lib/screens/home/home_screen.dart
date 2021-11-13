import 'package:first_app/components/bottom_navigator_bar.dart';
import 'package:first_app/screens/home/components/categorized_product.dart';
import 'package:first_app/screens/home/components/popular_product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../enums.dart';
import 'components/banner_slider.dart';
import 'components/category_box.dart';
import 'components/header.dart';
import 'components/offer_slider.dart';
class HomeScreen extends StatelessWidget {
  static String routeName = '/';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea (
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Header(),
              bannerSlider('assets/images/slider.jpg'),
              CategoryBox(),
              OfferSlider(),
              SizedBox(height: 5,),
              PopularProducts(),
              bannerSlider('assets/images/slider2.jpg'),
              CategorizedProduct(categoryTitle: 'لوازم جانبی')
          ]
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }


}








