import 'package:basketball_counter_app_fixed/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  CounterCubit() : super(InitialState());
  void updatepoints({required String team, required int points}) {
    if (team == 'A') {
      teamAPoints += points;
      emit(UpdateUI());
    } else if (team == 'B') {
      teamBPoints += points;
      emit(UpdateUI());
    }
  }

  void resetPoints() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(UpdateUI());
  }
}
