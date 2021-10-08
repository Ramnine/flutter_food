import 'package:app/pages/HomePage.dart';
import 'package:app/pages/_HOMEPage/FoodPage.dart';
import 'package:app/pages/_HOMEPage/Foodpage/OrderPage.dart';
import 'package:app/pages/_HOMEPage/Foodpage/fooddetails.dart';
import 'package:app/pages/_HOMEPage/ProfilePage.dart';
import 'package:app/pages/login/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
              color: Colors.white,
          ),headline6: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          bodyText2: TextStyle(fontSize: 14.0,),
        ),
      ),
      //home: LoginPage(),
      routes: {
        LoginPage.routeName:(context) => const LoginPage() ,
        HomePage.routeName : (context) => const HomePage() ,
        FoodPage.routeName : (context) => const FoodPage(),
        Fooddetails.routeName : (context) => const Fooddetails(),
      },
      initialRoute: LoginPage.routeName,
    );
  }
}

