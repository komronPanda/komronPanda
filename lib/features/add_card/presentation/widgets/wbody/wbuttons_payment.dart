import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../gen/=/assets.gen.dart';
import '../../bloc/add_card_bloc.dart';
import 'wbutton.dart';

class WButtonsPayment extends StatelessWidget {

  const WButtonsPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          WButton(
            onPressed: () => context.read<AddCardBloc>()..add(const AddCardEvent.pay()),
            color: const Color(0xFF37BD6B),
            child: const Text(
              'Pay Now (\$265) ',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w600,
                letterSpacing: 0.35,
              ),
            ),
          ),
          const SizedBox(height: 12,),
          WButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  Assets.icons.cameraIcon.path,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  'Scan Card',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF37BD6B),
                    fontSize: 15,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.35,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
