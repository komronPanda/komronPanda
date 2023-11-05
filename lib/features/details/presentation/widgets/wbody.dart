import '/features/details/presentation/widgets/wbase_containter.dart';
import '/features/details/domain/entities/information_entity.dart';
import 'package:flutter/material.dart';

import 'worder_details/worder_details.dart';
import 'wprice_details/wprice_details.dart';

class WBody extends StatelessWidget {
  final InformationEntity information;

  const WBody({super.key, required this.information});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        ///price details
        WBaseContainer(
          headerTitle: 'PRICE DETAILS',
          child: WPriceDetails(information: information),
        ),
        ///Note
        WBaseContainer(
          headerTitle: 'NOTE',
          child: Text(
            information.note,
            style: const TextStyle(
              color: Color(0xFF6A6D7C),
              fontSize: 14,
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.w400,
              height: 1.5,
            ),
          ),
        ),
        ///Order Details
        WBaseContainer(
          headerTitle: 'ORDER DETAILS',
          child: WOrderDetails(information: information),
        ),
      ],
    );
  }
}
