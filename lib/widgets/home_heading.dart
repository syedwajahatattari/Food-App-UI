import 'package:flutter/material.dart';

class HomeHeading extends StatelessWidget {
  const HomeHeading({Key? key, required this.homeheading}) : super(key: key);

  final String homeheading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 10),
      child: Text(
        homeheading,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}