import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../gen/=/assets.gen.dart';
import '../text_fields_widgets/input_formatters.dart';
import '../text_fields_widgets/wtext_field.dart';
import '../wbase_containter.dart';

class WCardInfo extends StatelessWidget {
  final cardNumberFunction;
  final expDateFunction;
  final cvvFunction;

  const WCardInfo({
    super.key,
    this.cardNumberFunction,
    this.expDateFunction,
    this.cvvFunction,
  });

  @override
  Widget build(BuildContext context) {
    return WBaseContainer(
      headerTitle: 'CARD INFORMATION',
      child: Column(
        children: [
          WTextField(
            onChange: cardNumberFunction,
            height: 46,
            width: double.infinity,
            hint: 'XXXX XXXX XXXX XXXX',
            title: 'Card number',
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(16),
              CardNumberInputFormatter(),
            ],
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                Assets.icons.cardIcon.path,
                color: const Color(0xff8A8A8E),
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: WTextField(
                  height: 46,
                  width: 150,
                  hint: 'MM/YY',
                  onChange: expDateFunction,
                  keyboardType: TextInputType.number,
                  title: 'Exp. Date',
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(5),
                    FilteringTextInputFormatter.digitsOnly,
                    CardInputMonthlyFormatter(),
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: WTextField(
                  height: 46,
                  width: 150,
                  hint: 'CVV',
                  onChange: cvvFunction,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(3),
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  title: 'CVV',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
