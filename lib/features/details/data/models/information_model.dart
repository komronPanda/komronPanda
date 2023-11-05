import 'package:freezed_annotation/freezed_annotation.dart';

part 'information_model.freezed.dart';
part 'information_model.g.dart';

@freezed
class InformationModel with _$InformationModel {
  const factory InformationModel({
    required String basePrice,
    required int qBasePrice,
    required String bedroom,
    required int qBedroom,
    required String bathroom,
    required int qBathroom,
    required String employee,
    required int qEmployee,
    required String tax,
    required String totalPrice,
    required String note,
    required String orderStatus,
    required String orderId,
    required String paymentMethod,
    required String companyName,
    required String serviceName,
    required String date,
    required String timePeriod,
    required String address,
    required String number_of_bedrooms,
    required String number_of_bathrooms,
    required String pets,
    required String extra_services,
  }) = _InformationModel;

  factory InformationModel.fromJson(Map<String, dynamic> json) =>
      _$InformationModelFromJson(json);
}
