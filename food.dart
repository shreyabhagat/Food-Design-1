import 'package:flutter/material.dart';
import 'package:shreya/food_list.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Food extends StatelessWidget {
  final FoodList food;

  Food({this.food});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //height: 400,
      margin: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            food.image,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 7, horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  food.title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  food.price,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 9,
              vertical: 0,
            ),
            child: Text(
              food.dec,
              style: TextStyle(
                fontSize: 12,
                color: Colors.black54,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 9, vertical: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SmoothStarRating(
                  allowHalfRating: true,
                  rating: food.starRating,
                  borderColor: Colors.deepOrange,
                  size: 18,
                  color: Colors.deepOrange,
                ),
                OutlineButton(
                  color: Colors.grey.shade500,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                  child: Text(
                    'Buy Now',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
