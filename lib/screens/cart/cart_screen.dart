import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../data.dart';
import 'components/cart_card.dart';
import 'components/checkout_card.dart';


class CartScreen extends StatefulWidget {
  static String routeName = "/cart";

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Padding(
        padding:
        EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
          itemCount: demoCarts.length,
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Dismissible(
              key: Key(demoCarts[index].product.id.toString()),
              direction: DismissDirection.endToStart,
              onDismissed: (direction) {
                setState(() {
                  demoCarts.removeAt(index);
                });
              },
              background: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Color(0xFFFFE6E6),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Spacer(),
                    SvgPicture.asset("assets/icons/Trash.svg"),
                  ],
                ),
              ),
              child: CartCard(cart: demoCarts[index]),
            ),
          ),
        ),
      ),
      bottomNavigationBar: CheckoutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "سبد خرید",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "${demoCarts.length} محصول",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
