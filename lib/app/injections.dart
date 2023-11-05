import 'package:details_page_clean_arch/features/details/domain/usecases/get_infromation_usecase.dart';
import 'package:get_it/get_it.dart';
import '/features/details/data/data_sources/information_datasource.dart';
import '/features/details/domain/repository/information_repository.dart';
import '/features/details/presentation/bloc/information_bloc.dart';
import '../features/details/data/repository/information_repository_impl.dart';
import 'app_router.dart';

final ls = GetIt.instance;

Future<void> setup() async {
  ls.registerSingleton<AppRouter>(AppRouter());

  /// InformationBloc
  ls.registerFactory<InformationBloc>(
    () => InformationBloc(getInformationUseCase: ls()),
  );

  /// repositories
  ls.registerLazySingleton<InformationRepository>(
      () => InformationRepositoryImpl(informationDataSource: ls()));

  /// use cases
  ls.registerLazySingleton<GetInformationUseCase>(
      () => GetInformationUseCase(informationRepository: ls()));

  /// data sources
  ls.registerLazySingleton<InformationDataSource>(
      () => InformationDataSourceImpl());
}
