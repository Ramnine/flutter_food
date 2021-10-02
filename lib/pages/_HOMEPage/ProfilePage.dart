
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(

    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(150.0),
              child: Container(
                width: 300.0,
                height: 300.0,
                child: Image.asset('assets/images/vidar.jpg'),
              )),
          Text(
            'Pattadhon Buaphuen',
            style: TextStyle(fontSize: 50.0),
          ),
          Text(
            'bauphuen_p@silpakorn.edu',
            style: TextStyle(fontSize: 30.0),
          ),
        ],
      ),
    ),
    );
  }
}

