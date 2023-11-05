import '/features/add_card/domain/entities/address_info.dart';
import '/features/add_card/domain/entities/card_info.dart';

abstract class UseCase<Type, Params> {
  Future<Type> call(Params params);
}

class NoParams {}

class CardAndAddressParams{
  final CardInfo cardInfo;
  final AddressInfo addressInfo;

  CardAndAddressParams({required this.cardInfo, required this.addressInfo});


}