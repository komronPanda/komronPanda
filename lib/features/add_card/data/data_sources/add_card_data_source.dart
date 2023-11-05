import '/features/add_card/data/models/address_info_model.dart';
import '/features/add_card/data/models/card_info_model.dart';

abstract class AddCardDataSource{
  Future<void> createCard(CardInfoModel cardInfoModel, AddressInfoModel addressInfoModel);
}

class AddCardDataSourceImpl extends AddCardDataSource{
  final Map<String, dynamic> userCardData;
  AddCardDataSourceImpl({required this.userCardData});

  late int id = 0;

  @override
  Future<void> createCard(CardInfoModel cardInfoModel, AddressInfoModel addressInfoModel) async {
    final cardInfo =  cardInfoModel.toJson();
    final addressInfo = addressInfoModel.toJson();
    id++;

    try{
      final data = <String, dynamic>{
        'cardInfo': cardInfo,
        'addressInfo': addressInfo,
      };
      userCardData["userInfo$id"] = data;
      print('ADDED userInfo$id');
      print(userCardData);

    } catch(e){
      print("error in adding data");
      rethrow;
    }
  }

}