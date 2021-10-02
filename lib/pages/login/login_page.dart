
import 'package:app/pages/_HOMEPage/FoodPage.dart';
import 'package:app/pages/_HOMEPage/ProfilePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../HomePage.dart';

class LoginPage extends StatefulWidget {
  static const routeName = '/login';

  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

Widget _showci() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 40.0,
      height: 40.0,
      //color: Colors.green, // ห้ามกำหนด color ตรงนี้ ถ้าหากกำหนดใน BoxDecoration แล้ว
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade100,
        shape: BoxShape.circle,
      ),
    ),
  );
}

Widget _showciblack() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 40.0,
      height: 40.0,
      //color: Colors.green, // ห้ามกำหนด color ตรงนี้ ถ้าหากกำหนดใน BoxDecoration แล้ว
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade900,
        shape: BoxShape.circle,
      ),
    ),
  );
}

Widget _sh = Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    _showci(),_showci(),_showci(),_showci(),_showci(),_showci()
  ],
);

setshow(int i) {
  if (i == 1) {
    _sh = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _showciblack(),_showci(),_showci(),_showci(),_showci(),_showci()
      ],
    );
  }
  else if(i == 2){
    _sh = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _showciblack(),_showciblack(),_showci(),_showci(),_showci(),_showci()
      ],
    );
  }else if(i == 3){
    _sh = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _showciblack(),_showciblack(),_showciblack(),_showci(),_showci(),_showci()
      ],
    );
  }else if(i == 4){
    _sh = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _showciblack(),_showciblack(),_showciblack(),_showciblack(),_showci(),_showci()
      ],
    );
  }else if(i == 5){
    _sh = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _showciblack(),_showciblack(),_showciblack(),_showciblack(),_showciblack(),_showci()
      ],
    );
  }else if(i == 6){
    _sh = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _showciblack(),_showciblack(),_showciblack(),
        _showciblack(),_showciblack(),_showciblack()
      ],
    );
  }else if(i == 0){
    _sh = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _showci(),_showci(),_showci(),_showci(),_showci(),_showci()
      ],
    );
  }
}

class _LoginPageState extends State<LoginPage> {
  var input = '';
  String showtext = '123456';//รหัสที่ถูกต้อง

  void _showError() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('ERROR'),
          content: Text('Invalid PIN. Please try again.'),
          actions: [
            // ปุ่ม OK ใน dialog
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                // ปิด dialog
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            // ไล่เฉดจากมุมบนซ้ายไปมุมล่างขวาของ Container
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            // ไล่เฉดจากสีแดงไปสีน้ำเงิน
            colors: [
              Colors.blueGrey.shade900,
              Colors.black,
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.lock_outline,
                        size: 100.0,
                        color: Colors.white,
                      ),
                      Text(
                        'LOGIN',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      /*Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          input,
                          style: TextStyle(fontSize: 30.0, color: Colors.white),
                        ),
                      ),*/
                      Expanded(
                        child: _sh,

                      ),




                    ],
                  ),
                ),
              ),
              Container(
                //color: Colors.green.shade700,
                child: Column(
                  children: [
                    [1, 2, 3],
                    [4, 5, 6],
                    [7, 8, 9],
                    [-2, 0, -1],
                  ].map((row) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: row.map((item) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: LoginButton(
                            number: item,
                            onClick: _handleClickButton,
                          ),
                        );
                      }).toList(),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleClickButton(int num) {
    print(input.length);
    setState(() {
      if (num == -1) {
        if (input.length > 0) input = input.substring(0, input.length - 1);
        setshow(input.length);
      } else {
        input = input + '$num';
        setshow(input.length);
      }
    });
    if (input.length == 6) {
      if (input == showtext) {
        /*Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );*/
        Navigator.pushReplacementNamed(context,HomePage.routeName);
        setshow(0);
        input =('');
      } else {
        _showError();
        input = '';
        setshow(0);
      }
    }
  }
}

class LoginButton extends StatelessWidget {
  final int number;
  final Function(int) onClick;

  const LoginButton({
    required this.number,
    required this.onClick,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: CircleBorder(),
      onTap: number == -2
          ? null
          : () {
              onClick(number);
            },
      child: Container(
        width: 80.0,
        height: 80.0,
        decoration: number == -2
            ? null
            : BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2.0),
              ),
        child: Center(
          child: number >= 0
              ? Text('$number', style: Theme.of(context).textTheme.headline6)
              : (number == -1
                  ? Icon(
                      Icons.backspace_outlined,
                      size: 28.0,
                      color: Colors.white,
                    )
                  : SizedBox.shrink()),
        ),
      ),
    );
  }
}
