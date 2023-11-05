import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../gen/=/assets.gen.dart';
import '../text_fields_widgets/wtext_field.dart';
import '../wbase_containter.dart';

class WBillingInfo extends StatelessWidget {
  final address1Function;
  final address2Function;
  final stateFunction;
  final cityFunction;
  final zipCodeFunction;

  const WBillingInfo({
    super.key,
     this.address1Function,
     this.address2Function,
     this.stateFunction,
     this.cityFunction,
     this.zipCodeFunction,
  });

  @override
  Widget build(BuildContext context) {
    return WBaseContainer(
      headerTitle: 'BILLING INFORMATION',
      child: Column(
        children: [
          WTextField(
            onChange: address1Function,
            height: 46,
            width: double.infinity,
            hint: 'Address line',
            title: 'Address line 1',
          ),
          WTextField(
            onChange: address2Function,
            height: 46,
            width: double.infinity,
            hint: 'Address line',
            title: 'Address line 2',
          ),
          WTextField(
            onChange: stateFunction,
            height: 46,
            width: double.infinity,
            hint: 'Select State',
            title: 'State',
            suffixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: SvgPicture.asset(
                Assets.icons.downIcon.path,
              ),
            ),
          ),
          WTextField(
            onChange: cityFunction,
            height: 46,
            width: double.infinity,
            hint: 'Select City',
            title: 'City',
            suffixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: SvgPicture.asset(
                Assets.icons.downIcon.path,
              ),
            ),
          ),
          WTextField(
            onChange: zipCodeFunction,
            height: 46,
            width: double.infinity,
            hint: 'ZIP Code',
            title: 'ZIP Code',
          ),
        ],
      ),
    );
  }
}
