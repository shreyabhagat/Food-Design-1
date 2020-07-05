import 'package:flutter/material.dart';
import 'package:shreya/food_list.dart';
import 'package:shreya/getAppBar.dart';

import 'food.dart';

class HomePage extends StatelessWidget {
  final List<FoodList> foods =getFoodFromServer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar('Foods List', Colors.deepOrange),
      body: ListView.builder(
        itemCount: foods.length,
        itemBuilder: (BuildContext context ,int index){
          return Food(food: foods[index],);
        }
      )
    );
  }
}

