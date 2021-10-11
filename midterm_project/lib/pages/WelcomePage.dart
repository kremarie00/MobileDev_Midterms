import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  static String routeName = "/welcome";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        foregroundDecoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://images4.alphacoders.com/109/1099190.png"),
              fit: BoxFit.cover,
          ),
        ),
      
        
      ),
    );
  }
}
