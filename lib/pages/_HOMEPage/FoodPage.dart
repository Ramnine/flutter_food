

import 'package:app/pages/HomePage.dart';
import 'package:app/pages/_HOMEPage/ProfilePage.dart';
import 'package:app/pages/login/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Foodpage/FoodListPage.dart';
import 'Foodpage/OrderPage.dart';

class FoodPage extends StatefulWidget {
  static const routeName = '/FoodPage';

  const FoodPage({Key? key}) : super(key: key);

  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  var _subPageIndex = 0;
  var _sIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(


        bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.blueGrey.shade900,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Menu',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Your Order',

          ),
        ],
        currentIndex: _sIndex,
        onTap: (index) {
          setState(() {
            _sIndex = index;
            _subPageIndex = index;
          });
        },
      ),
        body: Container(
            child : _setpage()
        )
    );
  }

  _showSubPage(int i) {
    _subPageIndex = i;
    Navigator.of(context).pop();
  }

  Widget _setpage() {
    switch (_subPageIndex) {
      case 0:
      return FoodListPage();
      case 1:
        return OrderPage();
      case 2:
        return HomePage();




      default:
        return SizedBox.shrink();
    }
  }
}

Row _buildDrawerItem(Widget icon, String title) {
  return Row(
    children: [
      icon,
      Text('$title'),
    ],
  );
}
