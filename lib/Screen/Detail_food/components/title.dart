import 'package:flutter/material.dart';
import 'package:queue_booking_app/Themes/constants.dart';

class TitlePriceRating extends StatelessWidget {
  //final int price,
  final int numOfReviews;
  final double rating;
  final String name;

  const TitlePriceRating({
    Key key,
    //this.price,
    this.numOfReviews,
    this.rating,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  name,
                  style: Theme.of(context).textTheme.headline,
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    SizedBox(width: 10),
                    Text("$numOfReviews reviews"),
                  ],
                ),
              ],
            ),
          ),
          //priceTag(context, price: price),
        ],
      ),
    );
  }
}
