// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'information_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InformationModelImpl _$$InformationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InformationModelImpl(
          basePrice: json['base_price'] as String,
          qBasePrice: json['q_base_price'] as int,
          bedroom: json['bedroom'] as String,
          qBedroom: json['q_bedroom'] as int,
          bathroom: json['bathroom'] as String,
          qBathroom: json['q_bathroom'] as int,
          employee: json['employee'] as String,
          qEmployee: json['q_employee'] as int,
          tax: json['tax'] as String,
          totalPrice: json['total_price'] as String,
          note: json['note'] as String,
          orderStatus: json['order_status'] as String,
          orderId: json['order_id'] as String,
          paymentMethod: json['payment_method'] as String,
          companyName: json['company_name'] as String,
          serviceName: json['service_name'] as String,
          date: json['date'] as String,
          timePeriod: json['time_period'] as String,
          address: json['address'] as String,
      number_of_bedrooms: json['number_of_bedrooms'] as String,
      number_of_bathrooms: json['number_of_bathrooms'] as String,
      pets: json['pets'] as String,
      extra_services: json['extra_services'] as String,
    );

Map<String, dynamic> _$$InformationModelImplToJson(
        _$InformationModelImpl instance) =>
    <String, dynamic>{
      'basePrice': instance.basePrice,
      'qBasePrice': instance.qBasePrice,
      'bedroom': instance.bedroom,
      'qBedroom': instance.qBedroom,
      'bathroom': instance.bathroom,
      'qBathroom': instance.qBathroom,
      'employee': instance.employee,
      'qEmployee': instance.qEmployee,
      'tax': instance.tax,
      'totalPrice': instance.totalPrice,
      'note': instance.note,
      'orderStatus': instance.orderStatus,
      'orderId': instance.orderId,
      'paymentMethod': instance.paymentMethod,
      'companyName': instance.companyName,
      'serviceName': instance.serviceName,
      'date': instance.date,
      'timePeriod': instance.timePeriod,
      'address': instance.address,
      'number_of_bedrooms': instance.number_of_bedrooms,
      'number_of_bathrooms': instance.number_of_bathrooms,
      'pets': instance.pets,
      'extra_services': instance.extra_services,
    };
