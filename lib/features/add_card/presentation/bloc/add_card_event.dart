part of 'add_card_bloc.dart';

@freezed
class AddCardEvent with _$AddCardEvent{
  const factory AddCardEvent.setCardNumber(String value) = _SetCardNumberEvent;
  const factory AddCardEvent.setExpDate(String value) = _SetExpDateEvent;
  const factory AddCardEvent.setCVV(String value) = _SetCVVEvent;
  const factory AddCardEvent.setAddressLine1(String value) = _SetAddressLine1Event;
  const factory AddCardEvent.setAddressLine2(String value) = _SetAddressLine2Event;
  const factory AddCardEvent.setState(String value) = _SetStateEvent;
  const factory AddCardEvent.setCity(String value) = _SetCityEvent;
  const factory AddCardEvent.setZipCode(String value) = _SetZipCodeEvent;
  const factory AddCardEvent.pay() = _PayEvent;
}