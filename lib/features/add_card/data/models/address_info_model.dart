import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_info_model.freezed.dart';
part 'address_info_model.g.dart';


@freezed
class AddressInfoModel with _$AddressInfoModel {
  const factory AddressInfoModel({
    required String addressLine1,
    required String addessLine2,
    required String state,
    required String city,
    required String zipCode,
  }) = _AddressInfoModel;

  factory AddressInfoModel.fromJson(Map<String, dynamic> json) =>
      _$AddressInfoModelFromJson(json);
}