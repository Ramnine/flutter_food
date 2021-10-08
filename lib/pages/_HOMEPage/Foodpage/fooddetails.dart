import 'package:app/models/food_item.dart';
import 'package:flutter/material.dart';

class Fooddetails extends StatefulWidget {
  static const routeName = '/fooddetails';

  const Fooddetails({Key? key}) : super(key: key);

  @override
  _FooddetailsState createState() => _FooddetailsState();
}

class _FooddetailsState extends State<Fooddetails> {
  @override
  Widget build(BuildContext context) {
    var item = ModalRoute.of(context)!.settings.arguments as FoodItem;
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name,style: TextStyle(fontSize: 50.0),),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      body: Container(
        child: ListView(

          children: [
            Image.asset(
              'assets/images/${item.image}',
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "ชื่อเมนู:" + item.name,
                style: TextStyle(fontSize: 20.0,color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "ราคา: ${item.price}",
                style: TextStyle(fontSize: 20.0,color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
