import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String name;
  CustomContainer({required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Colors.white,
        child: Text(
          name,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
