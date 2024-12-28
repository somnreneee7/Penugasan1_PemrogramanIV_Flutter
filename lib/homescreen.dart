import 'package:flutter/material.dart';
import 'package:flutter_application_ex/splahscreen.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => SplashScreen()),
                (route) => false,
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Welcome to Gym App!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
