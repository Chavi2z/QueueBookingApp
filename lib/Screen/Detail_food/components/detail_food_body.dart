import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:queue_booking_app/Screen/Detail_food/components/booking_button.dart';
import 'package:queue_booking_app/Screen/Detail_food/components/botton_wait.dart';
import 'package:queue_booking_app/Screen/Detail_food/components/item_image.dart';
import 'package:queue_booking_app/Screen/Detail_food/components/title.dart';
import 'package:queue_booking_app/Themes/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // SvgPicture.asset("assets/images/burger.png"),
        ItemImage(
          imgSrc: "assets/images/burger.png",
        ),
        Expanded(
          child: ItemInfo(),
        ),
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            WaitButton(
              size: size,
              press: () {},
            ),

            TitlePriceRating(
              name: "McDonalds",
              numOfReviews: 24,
              rating: 4,
              //price: 15,
              // onRatingChanged: (value) {},
            ),

            shopeName(name: "McDonalds123456789"),
            SizedBox(height: size.height * 0.01),
            Text(
              "Nowadays, making printed materials have become fast, easy and simple. If you want your promotional material to be an eye-catching object, you should make it colored. By way of using inkjet printer this is not hard to make. An inkjet printer is any printer that places extremely small droplets of ink onto paper to create an image.",
              style: TextStyle(
                height: 1.5,
              ),
            ),
            SizedBox(height: size.height * 0.02),
            BookingButton(
              size: size,
              press: () {},
            ),

            // Free space  10% of total height
          ],
        ),
      ),
    );
  }

  Row shopeName({String name}) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.location_on,
          color: ksecondaryColor,
        ),
        SizedBox(width: 10),
        Text(name),
      ],
    );
  }
}