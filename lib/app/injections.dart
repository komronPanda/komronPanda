import 'package:details_page_clean_arch/features/add_card/data/data_sources/add_card_data_source.dart';
import 'package:details_page_clean_arch/features/add_card/domain/repository/add_card_repository.dart';
import 'package:details_page_clean_arch/features/add_card/domain/usecases/create_card_use_case.dart';

import '../features/add_card/data/repository/add_card_repository_impl.dart';
import '/features/add_card/presentation/bloc/add_card_bloc.dart';
import '/features/details/domain/usecases/get_infromation_usecase.dart';
import 'package:get_it/get_it.dart';
import '/features/details/data/data_sources/information_datasource.dart';
import '/features/details/domain/repository/information_repository.dart';
import '/features/details/presentation/bloc/information_bloc.dart';
import '../features/details/data/repository/information_repository_impl.dart';
import 'app_router.dart';

final ls = GetIt.instance;
final Map<String, dynamic> dataMap = {};

Future<void> setup() async {
  ls.registerSingleton<AppRouter>(AppRouter());
  ls.registerSingleton<Map<String, dynamic>>(dataMap);

  /// Bloc
  ls.registerFactory<InformationBloc>(
    () => InformationBloc(getInformationUseCase: ls()),
  );
  ls.registerFactory<AddCardBloc>(
    () => AddCardBloc(createCardUseCase: ls()),
  );

  /// repositories
  ls.registerLazySingleton<InformationRepository>(
      () => InformationRepositoryImpl(informationDataSource: ls()));

  ls.registerLazySingleton<AddCardRepository>(
          () => AddCardRepositoryImpl(addCardDataSource: ls()));

  /// use cases
  ls.registerLazySingleton<GetInformationUseCase>(
      () => GetInformationUseCase(informationRepository: ls()));

  ls.registerLazySingleton<CreateCardUseCase>(
      () => CreateCardUseCase(addCardRepository: ls()));


  /// data sources
  ls.registerLazySingleton<InformationDataSource>(
      () => InformationDataSourceImpl());

  ls.registerLazySingleton<AddCardDataSource>(
      () => AddCardDataSourceImpl(userCardData: ls()));


}
