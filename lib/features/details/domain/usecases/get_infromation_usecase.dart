import '/core/usecase.dart';
import '/features/details/domain/repository/information_repository.dart';
import '/features/details/domain/entities/information_entity.dart';

class GetInformationUseCase extends UseCase<InformationEntity, void>{
  final InformationRepository informationRepository;

  GetInformationUseCase({required this.informationRepository});
  @override
  Future<InformationEntity> call(void params) async {
    final informationModel = await informationRepository.getInformation();
    return informationModel;
  }

}