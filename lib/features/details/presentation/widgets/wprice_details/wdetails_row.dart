import 'package:flutter/material.dart';

class WDetailsRow extends StatelessWidget {
  final String name;
  final String price;
  final int ? quantity;
  const WDetailsRow({super.key, required this.name, this.quantity, required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 9),
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
                  text: '\$$price',
                  style: const TextStyle(
                    color: Color(0xFF171215),
                    fontSize: 14,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                if(quantity! > 1)
                TextSpan(
                  text: ' x$quantity',
                  style: const TextStyle(
                    color: Color(0xFF37BD6B),
                    fontSize: 14,
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
