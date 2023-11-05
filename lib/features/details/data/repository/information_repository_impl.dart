import '/features/details/data/data_sources/information_datasource.dart';
import '/features/details/data/mapper/mapper.dart';
import '/features/details/domain/entities/information_entity.dart';
import '/features/details/domain/repository/information_repository.dart';

class InformationRepositoryImpl extends InformationRepository{
  final InformationDataSource informationDataSource;

  InformationRepositoryImpl({required this.informationDataSource});
  @override
  Future<InformationEntity> getInformation() async {
    return InformationMapper.map(await informationDataSource.getInformation());
  }

}