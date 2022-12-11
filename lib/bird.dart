// ignore_for_file: sized_box_for_whitespace, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

class bird extends StatefulWidget {
  const bird({super.key});

  @override
  State<bird> createState() => _birdState();
}

class _birdState extends State<bird> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.10,
      width: MediaQuery.of(context).size.width * 0.10,
      // ignore: prefer_const_constructors
      child: FittedBox(
        fit: BoxFit.cover,
        child: CircleAvatar(
          backgroundImage: AssetImage("lib/images/animals.jpg"),
        ),
      ),
    );
  }
}
