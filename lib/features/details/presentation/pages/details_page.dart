import 'package:details_page_clean_arch/features/details/presentation/bloc/information_bloc.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/wappbar/wappbar_leading.dart';
import '../widgets/wbody.dart';

@RoutePage()
class InformationPage extends StatelessWidget {
  const InformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: double.infinity,
        leading: const WAppBarLeading(
          title: '#245541221',
        ),
      ),
      body: BlocBuilder<InformationBloc, InformationState>(
        builder: (context, state) => state.when(
          initial: () => Container(),
          loading: () => const Center(child: CircularProgressIndicator(),),
          loaded: (information) => WBody(information: information),
        ),
      ),
    );
  }
}
