import 'package:details_page_clean_arch/features/details/domain/entities/information_entity.dart';
import 'package:flutter/material.dart';

import 'wadditional_fees.dart';
import 'wdetails_row.dart';

class WPriceDetails extends StatelessWidget {
  final InformationEntity information;
  const WPriceDetails({super.key, required this.information});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 7,),
        WDetailsRow(name: "Base price", price: information.basePrice, quantity: information.qBasePrice,),
        WDetailsRow(name: "Bedroom", price: information.bedroom, quantity: information.qBedroom,),
        WDetailsRow(name: "Bathroom", price: information.bathroom, quantity: information.qBathroom,),
        WDetailsRow(name: "Employee", price: information.employee, quantity: information.qEmployee,),
        const SizedBox(height: 16,),
        const Text(
          'Additional fees',
          style: TextStyle(
            color: Color(0xFF171215),
            fontSize: 14,
            fontFamily: 'Gilroy',
            fontWeight: FontWeight.w500,
          ),
        ),
        WAdditionalFeesRow(name: 'Tax', isTax: true, price: information.tax,),
        const SizedBox(height: 16,),
        Container(
          decoration: const ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 1,
                strokeAlign: BorderSide.strokeAlignCenter,
                color: Color(0x336A6D7C),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8,),
        WAdditionalFeesRow(name: 'Total Price', isTax: false, price: information.totalPrice,),
      ],
    );
  }
}
