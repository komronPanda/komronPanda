import '/features/details/data/models/information_model.dart';
import '/features/details/domain/entities/information_entity.dart';

class InformationMapper {
  static InformationEntity map(InformationModel information)
  => InformationEntity(
        basePrice: information.basePrice,
        qBasePrice: information.qBasePrice,
        bedroom: information.bedroom,
        qBedroom: information.qBedroom,
        bathroom: information.bathroom,
        qBathroom: information.qBathroom,
        employee: information.employee,
        qEmployee: information.qEmployee,
        tax: information.tax,
        totalPrice: information.totalPrice,
        note: information.note,
        orderStatus: information.orderStatus,
        orderId: information.orderId,
        paymentMethod: information.paymentMethod,
        companyName: information.companyName,
        serviceName: information.serviceName,
        date: information.date,
        timePeriod: information.timePeriod,
        address: information.address,
        pets: information.pets,
        number_of_bedrooms: information.number_of_bedrooms,
        number_of_bathrooms: information.number_of_bathrooms,
      extra_services: information.extra_services,
      );
}
