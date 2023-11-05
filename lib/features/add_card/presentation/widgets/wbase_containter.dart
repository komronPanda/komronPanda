import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WBaseContainer extends StatelessWidget {
  final String headerTitle;
  final Widget child;
  const WBaseContainer({super.key, required this.headerTitle, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 1),
            child: Text(
              headerTitle,
              style: const TextStyle(
                color: Color(0xFF2F3E4A),
                fontSize: 16,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w500,
                letterSpacing: 0.38,
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
