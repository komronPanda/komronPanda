import 'package:flutter/material.dart';

class WAdditionalFeesRow extends StatelessWidget {
  final String name;
  final String price;
  final bool isTax;
  const WAdditionalFeesRow({super.key, required this.name, required this.price, required this.isTax});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: const TextStyle(
              color: Color(0xFF6A6D7C),
              fontSize: 14,
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.w400,
            ),
          ),
          Text.rich(
            TextSpan(
              children: [
                 TextSpan(
                  text: isTax ? '+' : "\$ ",
                  style: TextStyle(
                    color: isTax ? const Color(0xFF37BD6B) : const Color(0xFF171215),
                    fontSize: isTax ? 14 : 18,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text: isTax ? '\$$price' : price,
                  style: TextStyle(
                    color: const Color(0xFF171215),
                    fontSize: isTax ? 14 : 18,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
