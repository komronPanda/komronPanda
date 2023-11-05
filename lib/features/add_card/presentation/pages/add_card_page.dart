import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/add_card_bloc.dart';
import '../widgets/wbody/wbody.dart';
import '/core/widgets/wappbar/wappbar_leading.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class AddCardPage extends StatelessWidget {
  const AddCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: double.infinity,
        leading: const WAppBarLeading(
          title: 'Add Credit Card',
        ),
      ),
      body: BlocBuilder<AddCardBloc, AddCardState>(
        builder: (context, state) => state.when(
            initial: () => const WBody(),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (cardInfo) =>
                Center(child: Text(cardInfo.cardNumber.isEmpty ? 'You did not fill card number!' : 'Card Number: ${cardInfo.cardNumber} Succeed'))),
      ),
    );
  }
}
