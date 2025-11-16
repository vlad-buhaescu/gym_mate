import 'package:workout/domain/model/workout_set.dart';

class WorkoutExercise {
  final String id;
  final String name;
  final List<WorkoutSet> sets;

  const WorkoutExercise({
    required this.id,
    required this.name,
    required this.sets,
  });
}

