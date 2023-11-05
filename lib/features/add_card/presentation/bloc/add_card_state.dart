part of 'add_card_bloc.dart';

@freezed
class AddCardState with _$AddCardState{
  const factory AddCardState.initial() = _InitialState;
  const factory AddCardState.loading() = _LoadingState;
  const factory AddCardState.loaded({
    required CardInfo cardInfo,
  }) = _LoadedState;
}