import '../data_sources/add_card_data_source.dart';
import '../mappers/mapper.dart';
import '/features/add_card/domain/entities/address_info.dart';
import '/features/add_card/domain/entities/card_info.dart';
import '/features/add_card/domain/repository/add_card_repository.dart';

class AddCardRepositoryImpl extends AddCardRepository {
  final AddCardDataSource addCardDataSource;

  AddCardRepositoryImpl({required this.addCardDataSource});

  @override
  Future<void> createCard(CardInfo cardInfo, AddressInfo addressInfo) async {
    await addCardDataSource.createCard(
      CardAddressMapper.cardInfoToModel(cardInfo),
      CardAddressMapper.addressInfoToModel(addressInfo),
    );
  }
}
