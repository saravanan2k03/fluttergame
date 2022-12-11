// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class wtf extends StatelessWidget {
  final size;
  const wtf({this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: size,
      decoration: BoxDecoration(
          color: Colors.green,
          border: Border.all(
            width: 10,
            color: Color.fromARGB(255, 8, 159, 16),
          ),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
