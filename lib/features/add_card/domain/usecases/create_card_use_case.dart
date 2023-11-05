import '/features/add_card/domain/repository/add_card_repository.dart';

import '/core/usecase.dart';

class CreateCardUseCase extends UseCase<void, CardAndAddressParams>{
  final AddCardRepository addCardRepository;

  CreateCardUseCase({required this.addCardRepository});

  @override
  Future<void> call(CardAndAddressParams params) async {
    await addCardRepository.createCard(params.cardInfo, params.addressInfo);
  }

}