import 'package:flutter/material.dart';

class WBaseContainer extends StatelessWidget {
  final String headerTitle;
  final Widget child;
  const WBaseContainer({super.key, required this.headerTitle, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(top: 10),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            headerTitle,
            style: const TextStyle(
              color: Color(0xFF171215),
              fontSize: 16,
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.w600,
              letterSpacing: 0.35,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
