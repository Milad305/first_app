


import 'package:first_app/screens/cart/cart_screen.dart';
import 'package:first_app/screens/home/home_screen.dart';
import 'package:first_app/screens/product_detail/product_details.dart';
import 'package:flutter/cupertino.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  ProductDetail.routeName:(context) => ProductDetail(),
  CartScreen.routeName:(context) =>CartScreen(),
};