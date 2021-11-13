import 'package:first_app/screens/cart/cart_screen.dart';
import 'package:first_app/screens/home/components/search_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 5,
          left: 14.0,
          right: 14.0
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          InkWell(
            child: Container(
              //padding: EdgeInsets.only(top: 10 , left: 12,bottom: 10, right: 8),
              height: 43,
              width: 43,

              child: SvgPicture.asset(
                "assets/icons/menu.svg",
                matchTextDirection: true,
                color: Color(0xff7C7C7C),

              ),
            ),
          ),
          searchBox(),
          SizedBox(),
          InkWell(

            onTap: () => Navigator.pushNamed(context, CartScreen.routeName),
            child: Stack(
              overflow:Overflow.visible,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10 , left: 12,bottom: 10, right: 8),
                  height: 46,
                  width: 46,
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(50),
                      color: kSecondaryColor.withOpacity(0.1),
                      shape: BoxShape.circle
                  ),

                  child: SvgPicture.asset(
                    "assets/icons/Cart Icon.svg",
                    matchTextDirection: true,
                  ),
                ),
                Positioned(

                  top: 0,
                  left: 0,
                  child: Container(

                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(

                        shape:BoxShape.circle,
                        color: Colors.red
                    ),
                    child: Center(
                      child: Text(
                        '3',
                        style: TextStyle(
                            fontSize: 11,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                )
              ],

            ),
          )
        ],
      ),
    );
  }
}