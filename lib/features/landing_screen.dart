import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          Text(
            'Welcome to WhatsApp',
            style: TextStyle(
              fontSize: 33,
              fontWeight: FontWeight.w600,
            ),
          ),
          Image.network('https://www.youtube.com/watch?v=mEPm9w5QlJM')
        ],
      )),
    );
  }
}
