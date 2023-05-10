import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer({super.key, required this.text, required this.onTap});
  final String text;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.08,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text.toUpperCase(),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
