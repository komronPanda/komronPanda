import 'package:flutter/material.dart';

class WOrderText extends StatelessWidget {
  final String text;
  const WOrderText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFF6A6D7C),
          fontSize: 15,
          fontFamily: 'Gilroy',
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
