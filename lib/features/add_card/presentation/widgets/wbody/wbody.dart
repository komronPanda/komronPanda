import 'package:details_page_clean_arch/features/add_card/presentation/bloc/add_card_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'wbilling_info.dart';
import 'wbuttons_payment.dart';
import 'wcard_info.dart';

class WBody extends StatelessWidget {
  const WBody({super.key});

  // late TextEditingController controllerCardNumber = TextEditingController();
  // late TextEditingController controllerExpDate = TextEditingController();
  // late TextEditingController controllerCVV = TextEditingController();
  // late TextEditingController controllerAddressLine1 = TextEditingController();
  // late TextEditingController controllerAddressLine2 = TextEditingController();
  // late TextEditingController controllerState = TextEditingController();
  // late TextEditingController controllerCity = TextEditingController();
  // late TextEditingController controllerZIPCode = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 8),
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: [
            ///CARD INFORMATION
            WCardInfo(
              cardNumberFunction: (value) => context.read<AddCardBloc>()..add(AddCardEvent.setCardNumber(value)),
              cvvFunction: (value) => context.read<AddCardBloc>()..add(AddCardEvent.setCVV(value)),
              expDateFunction: (value) => context.read<AddCardBloc>()..add(AddCardEvent.setExpDate(value)),
            ),
            ///BILLING INFORMATION
            WBillingInfo(
              address1Function: (value) => context.read<AddCardBloc>()..add(AddCardEvent.setAddressLine1(value)),
              address2Function: (value) => context.read<AddCardBloc>()..add(AddCardEvent.setAddressLine2(value)),
              stateFunction: (value) => context.read<AddCardBloc>()..add(AddCardEvent.setState(value)),
              cityFunction: (value) => context.read<AddCardBloc>()..add(AddCardEvent.setCity(value)),
              zipCodeFunction: (value) => context.read<AddCardBloc>()..add(AddCardEvent.setZipCode(value)),
            ),
            ///Buttons
            WButtonsPayment(),
          ],
        ),
    );
  }
}
