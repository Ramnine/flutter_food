
import 'package:flutter/material.dart';

class FoodListPage extends StatelessWidget {
  const FoodListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'FOOD MENU',
            style: TextStyle(fontSize: 60.0),
          ),
        ],
      ),
    );
  }
}

