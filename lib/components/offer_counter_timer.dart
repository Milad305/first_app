import 'package:flutter/material.dart';
import 'package:first_app/constants.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
class OfferCounterTimer extends StatelessWidget {
  const OfferCounterTimer({
    Key? key,
    required this.endTime,
  }) : super(key: key);

  final int endTime;

  @override
  Widget build(BuildContext context) {
    return CountdownTimer(
        endTime: endTime,
        widgetBuilder: (BuildContext context,  time) {
          if (time!.days != null) {
            int hourNow = time.days! * 24;
          }
          if (time == null) {
            return Text('اتمام زمان!');
          }
          return Row(
            children: [
              Container(

                padding: EdgeInsets.only(top: 2),
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(1),

                      ),
                      const BoxShadow(
                        color: kPrimaryColor,
                        spreadRadius: -24.5,
                        blurRadius: 1.2,

                      ),
                    ],
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Center(
                  child: Text(
                    '${time.sec}',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white
                    ),
                  ),
                ),
              ),
              SizedBox(width: 4,),
              Container(
                padding: EdgeInsets.only(top: 2),
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(1),

                      ),
                      BoxShadow(
                        color: kPrimaryColor,
                        spreadRadius: -24.5,
                        blurRadius: 1.2,
                      ),
                    ],
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Center(
                  child: Text(
                    '${time.min}',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white
                    ),
                  ),
                ),
              ),
              SizedBox(width: 4,),
              Container(
                padding: EdgeInsets.only(top: 2, left: 1),
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(1),

                      ),
                      const BoxShadow(
                        color: kPrimaryColor,
                        spreadRadius: -24.5,
                        blurRadius: 1.2,
                      ),
                    ],

                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Center(
                  child: Text(
                    '${time.hours! +
                        time.days! * 24.toInt()}',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white
                    ),
                  ),
                ),
              ),

            ],
          );
        }
    );
  }
}