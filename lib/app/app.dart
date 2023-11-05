import 'package:details_page_clean_arch/features/add_card/presentation/bloc/add_card_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../features/details/presentation/bloc/information_bloc.dart';
import '/app/app_router.dart';
import '/app/injections.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = ls<AppRouter>();
    return MultiBlocProvider(
      providers: [
        BlocProvider<InformationBloc>(
            create: (context) => ls<InformationBloc>()
              ..add(const InformationEvent.getInformation())),
        BlocProvider<AddCardBloc>(create: (context) => ls<AddCardBloc>()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routeInformationParser: appRouter.defaultRouteParser(),
        routerDelegate: appRouter.delegate(),
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFFEDEEED),
          appBarTheme: const AppBarTheme(
            elevation: 0,
            backgroundColor: Colors.white,
            foregroundColor: Color(0xFF171215),
          ),
        ),
      ),
    );
  }
}
