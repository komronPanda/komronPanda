import '/features/add_card/domain/entities/address_info.dart';
import '/features/add_card/domain/entities/card_info.dart';

abstract class AddCardRepository{
  Future<void> createCard(CardInfo cardInfo, AddressInfo addressInfo);
}