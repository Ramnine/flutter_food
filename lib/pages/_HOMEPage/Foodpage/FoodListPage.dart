import 'package:app/models/food_item.dart';
import 'package:app/pages/_HOMEPage/Foodpage/fooddetails.dart';


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';





class Foodlist extends StatefulWidget {
  const Foodlist({Key? key}) : super(key: key);

  @override
  _FoodlistState createState() => _FoodlistState();
}

class _FoodlistState extends State<Foodlist> {
  var items = [
    FoodItem(
      id: 1,
      name: "ข้าวไข่เจียว",
      price: 25,
      image: "kao_kai_jeaw.jpg",
    ),
    FoodItem(
      id: 2,
      name: "ข้าวหมูแดง",
      price: 30,
      image: "kao_moo_dang.jpg",
    ),
    FoodItem(
      id: 3,
      name: "สเต็ก",
      price: 150,
      image: "food.png",
    ),
    FoodItem(
      id: 4,
      name: "ข้าวมันไก่",
      price: 30,
      image: "kao_mun_kai.jpg",
    ),
    FoodItem(
      id: 5,
      name: "ข้าวหน้าเป็ด",
      price: 35,
      image: "kao_na_ped.jpg",
    ),
    FoodItem(
      id: 6,
      name: "ข้าวผัด",
      price: 35,
      image: "kao_pad.jpg",
    ),
    FoodItem(
      id: 7,
      name: "ผัดเป็ด",
      price: 40,
      image: "pad_sie_eew.jpg",
    ),
    FoodItem(
      id: 8,
      name: "ผัดไท",
      price: 150,
      image: "pad_thai.jpg",
    ),FoodItem(
      id: 9,
      name: "ลาดหน้า",
      price: 150,
      image: "rad_na.jpg",
    ),FoodItem(
      id: 10,
      name: "ส้มตำไก่ย่าง",
      price: 150,
      image: "som_tum_kai_yang.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              FoodItem item = items[index];
              return Card(
                margin: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      Fooddetails.routeName,
                    arguments: item,
                    );


                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/${item.image}',
                          width: 100.0,
                          height: 100.0,
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.name,
                              style: TextStyle(fontSize: 20.0),
                            ),
                            Text(
                              "${item.price} บาท",
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }));
  }
}
