import 'package:flutter/material.dart';

class Cont_with_rasp extends StatelessWidget {
  Cont_with_rasp({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
    );
  }
}
