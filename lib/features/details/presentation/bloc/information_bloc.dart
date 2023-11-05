import 'package:bloc/bloc.dart';
import 'package:details_page_clean_arch/core/usecase.dart';
import '/features/details/domain/entities/information_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/usecases/get_infromation_usecase.dart';

part 'information_event.dart';

part 'information_state.dart';

part 'information_bloc.freezed.dart';

class InformationBloc extends Bloc<InformationEvent, InformationState> {
  final GetInformationUseCase getInformationUseCase;

  InformationBloc({required this.getInformationUseCase})
      : super(const InformationState.initial()) {
    on<_GetInformationEvent>(getInformationEvent);
  }

  void getInformationEvent(
      _GetInformationEvent event, Emitter<InformationState> emit) async {
    emit(const _LoadingState());
    final information = await getInformationUseCase.call(NoParams());
    emit(_LoadedState(information: information));
  }
}
