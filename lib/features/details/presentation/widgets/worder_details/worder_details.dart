import 'package:flutter_svg/svg.dart';

import '../../../../../gen/=/assets.gen.dart';
import '/features/details/domain/entities/information_entity.dart';
import '/features/details/presentation/widgets/worder_details/worder_column.dart';
import 'package:flutter/material.dart';

import 'worder_text.dart';

class WOrderDetails extends StatelessWidget {
  final InformationEntity information;

  const WOrderDetails({
    super.key,
    required this.information,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        WOrderColumn(
          name: 'Order status',
          child: SvgPicture.asset(Assets.icons.status.path),
        ),
        WOrderColumn(
          name: 'Order type',
          child: SvgPicture.asset(Assets.icons.orderTypeIcon.path),
        ),
        WOrderColumn(
          name: 'Order ID',
          child: WOrderText(text: information.orderId),
        ),
        WOrderColumn(
          name: 'Payment method',
          child: WOrderText(text: information.paymentMethod),
        ),
        WOrderColumn(
          name: 'Company name',
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(28),
                child: Image.asset(
                  'assets/icons/logo_image.jpg',
                  width: 28,
                  height: 28,
                ),
              ),
              const SizedBox(
                width: 3,
              ),
              WOrderText(text: information.companyName),
            ],
          ),
        ),
        WOrderColumn(
          name: 'Service name',
          child: WOrderText(text: information.serviceName),
        ),
        WOrderColumn(
          name: 'When',
          child: WOrderText(text: 'Date : ${information.date}\nTime period: ${information.timePeriod}',),
        ),
        WOrderColumn(
          name: 'Address',
          child: WOrderText(text: information.address),
        ),
        WOrderColumn(
          name: 'Number of bedrooms',
          child: WOrderText(text: information.number_of_bedrooms),
        ),
        WOrderColumn(
          name: 'Number of bathrooms',
          child: WOrderText(text: information.number_of_bathrooms),
        ),
        const WOrderColumn( ///forgot to put it to entys and to models
          name: 'Order type',
          child: WOrderText(text: 'ASAP'),
        ),
        WOrderColumn(
          name: 'Pets',
          child: WOrderText(text: information.pets),
        ),
        WOrderColumn(
          name: 'Extra services',
          child: WOrderText(text: information.extra_services),
        ),
      ],
    );
  }
}
