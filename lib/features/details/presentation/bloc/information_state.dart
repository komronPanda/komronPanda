part of 'information_bloc.dart';

@freezed
class InformationState with _$InformationState{
  const factory InformationState.initial() = _InitialState;
  const factory InformationState.loading() = _LoadingState;
  const factory InformationState.loaded({
    required InformationEntity information,
  }) = _LoadedState;
}