import 'package:app/pages/_HOMEPage/FoodPage.dart';
import 'package:app/pages/login/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '_HOMEPage/ProfilePage.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _subPageIndex = 0;
  var _sIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: _showtitle(),
          backgroundColor: Colors.blueGrey.shade900,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(color: Colors.blueGrey.shade900),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(60.0),
                          child: Container(
                            width: 100.0,
                            height: 100.0,
                            child: Image.asset('assets/images/vidar.jpg'),
                          )),
                      Text(
                        'Pattadhon Buaphuen',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                      Text(
                        'bauphuen_p@silpakorn.edu',
                        style: TextStyle(color: Colors.white, fontSize: 10.0),
                      )
                    ],
                  )),
              ListTile(
                title: _buildDrawerItem(
                  _subPageIndex == 0 ?
                    Icon(

                      Icons.fastfood,color: Colors.blueGrey.shade100,
                    ) : Icon(

                    Icons.fastfood,
                  ),
                    _subPageIndex == 0 ?
                    Text('Food',style: TextStyle(color: Colors.blueGrey.shade100),) :Text('Food') ),

                onTap: () => _showSubPage(0)
                  //Navigator.of(context).pushNamed(LoginPage.routeName);

              ),
              ListTile(
                title: _buildDrawerItem(
                    _subPageIndex == 1 ?
                    Icon(

                      Icons.person,color: Colors.blueGrey.shade100,
                    ) : Icon(

                      Icons.person,
                    ),
                    _subPageIndex == 1 ?
                    Text('Proflie',style: TextStyle(color: Colors.blueGrey.shade100),) :Text('Proflie') ),

                  onTap: () => _showSubPage(1)
              ),
            ],
          ),
        ),

        body: Container(
            child : _setpage()
        )

    );
  }

  _showSubPage(int i) {
    setState(() {
      _subPageIndex = i;
      Navigator.of(context).pop();
      print('$_subPageIndex');
    });

  }

  Widget _setpage() {
    switch (_subPageIndex) {
      case 1: return
        ProfilePage();
      case 0: return
        FoodPage();
      default:
        return SizedBox.shrink();
    }
  }

  Text _showtitle() {
    switch (_subPageIndex) {
      case 1: return
        Text('Profile');
      case 0: return
        Text('Food');
      default:
        return Text('Food');
    }
  }
}


Row _buildDrawerItem(Widget icon, Text title) {
  return Row(
    children: [
      icon,
      title,
    ],
  );
}

