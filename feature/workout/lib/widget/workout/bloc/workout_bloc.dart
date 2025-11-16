import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout/widget/workout/bloc/workout_event.dart';
import 'package:workout/widget/workout/bloc/workout_state.dart';

// Bloc
class WorkoutBloc extends Bloc<WorkoutEvent, WorkoutState> {
  WorkoutBloc() : super(WorkoutInitial()) {
    on<LoadWorkout>((event, emit) async {
      emit(WorkoutLoading());
      await Future.delayed(const Duration(seconds: 1));
      emit(WorkoutLoaded());
    });

    on<StartWorkout>((event, emit) {
      emit(WorkoutStarted());
    });
  }
}