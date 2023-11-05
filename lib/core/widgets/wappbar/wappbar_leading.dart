import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../gen/=/assets.gen.dart';

class WAppBarLeading extends StatelessWidget {
  final String title;
  const WAppBarLeading({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Color(0xFFDCDDDF), width: 1))
      ),
      padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: SvgPicture.asset(
              Assets.icons.leftbackIcon.path,
            ),
          ),
          const SizedBox(width: 13,),
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFF171215),
              fontSize: 18,
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }
}
