import 'package:workout/domain/model/workout_exercise.dart';

class Workout {
  final String id;
  final String name;
  final DateTime date;
  final List<WorkoutExercise> exercises;
  final String? notes;

  const Workout({
    required this.id,
    required this.name,
    required this.date,
    required this.exercises,
    this.notes,
  });
}
