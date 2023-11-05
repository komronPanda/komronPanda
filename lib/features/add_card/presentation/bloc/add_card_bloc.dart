import 'package:bloc/bloc.dart';
import 'package:details_page_clean_arch/core/usecase.dart';
import 'package:details_page_clean_arch/features/add_card/domain/entities/address_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/card_info.dart';
import '../../domain/usecases/create_card_use_case.dart';

part 'add_card_event.dart';
part 'add_card_state.dart';
part 'add_card_bloc.freezed.dart';

class AddCardBloc extends Bloc<AddCardEvent, AddCardState> {
  final CreateCardUseCase createCardUseCase;

  AddCardBloc({required this.createCardUseCase}) : super(const AddCardState.initial()) {
    on<_SetCardNumberEvent>(_cardNumber);
    on<_SetExpDateEvent>(_expDate);
    on<_SetCVVEvent>(_cvv);
    on<_SetAddressLine1Event>(_address1);
    on<_SetAddressLine2Event>(_address2);
    on<_SetStateEvent>(_state);
    on<_SetCityEvent>(_city);
    on<_SetZipCodeEvent>(_zipCode);
    on<_PayEvent>(_pay);
  }

  String cardNumber = '';
  String expireDate = '';
  String cvv = '';
  String addressLine1 = '';
  String addressLine2 = '';
  String st = '';
  String city = '';
  String zipCode = '';

  void _cardNumber(_SetCardNumberEvent event, Emitter<AddCardState> emitter){
    cardNumber = event.value;
    print(cardNumber);
  }
  void _expDate(_SetExpDateEvent event, Emitter<AddCardState> emitter){
    expireDate = event.value;
  }
  void _cvv(_SetCVVEvent event, Emitter<AddCardState> emitter){
    cvv = event.value;
  }
  void _address1(_SetAddressLine1Event event, Emitter<AddCardState> emitter){
    addressLine1 = event.value;
  }
  void _address2(_SetAddressLine2Event event, Emitter<AddCardState> emitter){
    addressLine2 = event.value;
  }
  void _state(_SetStateEvent event, Emitter<AddCardState> emitter){
    st = event.value;
  }
  void _city(_SetCityEvent event, Emitter<AddCardState> emitter){
    city = event.value;
  }
  void _zipCode(_SetZipCodeEvent event, Emitter<AddCardState> emitter){
    zipCode = event.value;
  }

  Future<void> _pay(_PayEvent event, Emitter<AddCardState> emitter) async {
    emit(const AddCardState.loading());
    final cardInfo = CardInfo(cardNumber: cardNumber, expDate: expireDate, cvv: cvv);
    final addressInfo = AddressInfo(addressLine1: addressLine1, addessLine2: addressLine2, state: st, city: city, zipCode: zipCode);
    await createCardUseCase.call(CardAndAddressParams(cardInfo: cardInfo, addressInfo: addressInfo));
    print('PAYYYYYYYYYYYYYYYYYY');
    emit(AddCardState.loaded(cardInfo: cardInfo));

  }

}
