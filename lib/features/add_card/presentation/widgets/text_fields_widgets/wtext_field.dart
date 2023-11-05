import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../gen/=/assets.gen.dart';

class WTextField extends StatelessWidget {
  final String title;
  final String hint;
  final double width;
  final prefixIcon;
  final suffixIcon;
  final double height;
  final Function(String)? onChange;
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatters;
  final keyboardType;

  const WTextField({
    super.key,
    this.suffixIcon,
    this.prefixIcon,
    required this.title,
    required this.hint,
    required this.width,
    required this.height,
    this.controller,
    this.onChange,
    this.inputFormatters, this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Opacity(
            opacity: 0.60,
            child: Text(
              title,
              style: const TextStyle(
                color: Color(0xFF171215),
                fontSize: 14,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          TextFormField(
            onChanged: onChange,
            cursorColor: const Color(0xff6C7E8A),
            inputFormatters: inputFormatters,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              hintText: hint,
              filled: true,
              hintStyle: const TextStyle(
                color: Color(0xFF95999D),
                fontSize: 14,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w400,
              ),
              focusColor: const Color(0xffD8E0E5),
              fillColor: const Color(0xffFBFCFD),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide:
                    const BorderSide(width: 1, color: Color(0xffD8E0E5)),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide:
                    const BorderSide(width: 1, color: Color(0xffD8E0E5)),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
            ),
          ),
        ],
      ),
    );
  }
}
