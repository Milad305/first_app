
import 'package:first_app/models/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'offer_counter_timer.dart';
class OfferCard extends StatefulWidget {

  Product product;
  OfferCard({
    required this.product,
  });

  @override
  _OfferCardState createState() => _OfferCardState();
}

class _OfferCardState extends State<OfferCard> {



  int endTime = DateTime.now().millisecondsSinceEpoch + 1000000 * 300;




  @override

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 8),
      height: MediaQuery.of(context).size.height * 0.36,
      width: 200,

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:BorderRadius.circular(15)
      ),
      child: GestureDetector(
        onTap: (){
          print('offer product taped');
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.2,
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                 // color: kSecondaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15)),
                ),
                child: Hero(
                  tag: widget.product.id.toString(),
                  child: Image.asset(widget.product.imgPath[0]),
                ),
              ),
            ),
             const SizedBox(height: 10),
            //PRODUCT IMAGE
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                widget.product.title,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6),

                ),
                maxLines: 2,
              ),
            ),
            //PRODUCT TITLE
            Padding(
              padding: const EdgeInsets.only(left: 8.0,bottom: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                        widget.product.oldPrice.toString(),
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough),
                        maxLines: 1
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    padding: EdgeInsets.only(right: 2),
                    width: 35,
                    height: 18,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.red
                    ),
                    child: Center(
                      child: Text(
                        '26% ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //PRODUCT PRICE
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Align(

                alignment: Alignment.topLeft,
                child: Text(
                  '${widget.product.price.toString()}تومان',
                  style: TextStyle(
                      color: Colors.black.withOpacity(.7),
                      fontSize: 18,
                      fontWeight: FontWeight.w300
                  ),
                  maxLines: 1,

                ),
              ),
            ),
            SizedBox(height: 9,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OfferCounterTimer(endTime: endTime),
              ],
            )



          ],
        ),
      )
    );
  }
}






