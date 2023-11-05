import '../entities/information_entity.dart';

abstract class InformationRepository{
  Future<InformationEntity> getInformation();
}