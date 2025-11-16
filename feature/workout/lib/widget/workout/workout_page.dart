import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout/widget/workout/bloc/workout_bloc.dart';
import 'package:workout/widget/workout/bloc/workout_event.dart';
import 'package:workout/widget/workout/bloc/workout_state.dart';

class WorkoutPage extends StatelessWidget {
  const WorkoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => WorkoutBloc()..add(LoadWorkout()),
      child: Scaffold(
        appBar: AppBar(title: const Text('Workout')),
        body: BlocBuilder<WorkoutBloc, WorkoutState>(
          builder: (context, state) {
            switch (state) {
              case WorkoutLoading():
                return const Center(child: CircularProgressIndicator());
              case WorkoutLoaded():
                return Center(
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<WorkoutBloc>().add(StartWorkout());
                    },
                    child: const Text('Start Workout'),
                  ),
                );
              case WorkoutStarted():
                return const Center(child: Text('Workout Started!'));
              default:
                return const Center(child: Text('Welcome to Workout'));
            }
          },
        ),
      ),
    );
  }
}
