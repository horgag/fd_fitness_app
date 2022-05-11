import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'end_of_phase_state.dart';

class EndOfPhaseCubit extends Cubit<EndOfPhaseState> {
  EndOfPhaseCubit() : super(EndOfPhaseInitial());
}
