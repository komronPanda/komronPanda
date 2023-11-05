import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_info_model.freezed.dart';
part 'card_info_model.g.dart';

@freezed
class CardInfoModel with _$CardInfoModel{
  const factory CardInfoModel({
    required String cardNumber,
    required String expDate,
    required String cvv,
  }) = _CardInfoModel;

  factory CardInfoModel.fromJson(Map<String, dynamic> json) =>
      _$CardInfoModelFromJson(json);
}