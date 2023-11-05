import '/features/add_card/domain/entities/address_info.dart';
import '/features/add_card/data/models/address_info_model.dart';
import '/features/add_card/domain/entities/card_info.dart';
import '/features/add_card/data/models/card_info_model.dart';

class CardAddressMapper {
  static CardInfoModel cardInfoToModel(CardInfo cardInfo) => CardInfoModel(
        cardNumber: cardInfo.cardNumber,
        expDate: cardInfo.expDate,
        cvv: cardInfo.cvv,
      );

  static AddressInfoModel addressInfoToModel(AddressInfo addressInfo) =>
      AddressInfoModel(
        addressLine1: addressInfo.addressLine1,
        addessLine2: addressInfo.addessLine2,
        state: addressInfo.state,
        city: addressInfo.city,
        zipCode: addressInfo.zipCode,
      );
}
