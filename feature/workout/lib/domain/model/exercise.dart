import 'package:workout/domain/model/equipment.dart';
import 'package:workout/domain/model/exercise_type.dart';
import 'package:workout/domain/model/muscle_group.dart';

class Exercise {
  final String id;
  final String name;
  final String? description;
  final List<MuscleGroup> primaryMuscles;
  final List<MuscleGroup> secondaryMuscles;
  final ExerciseType type;
  final Equipment equipment;
  final List<String>? aliases; // e.g. "Flat bench" = "Barbell Bench Press"
  final String? imageUrl;      // link to illustration (optional MVP)

  const Exercise({
    required this.id,
    required this.name,
    required this.primaryMuscles,
    required this.secondaryMuscles,
    required this.type,
    required this.equipment,
    this.description,
    this.aliases,
    this.imageUrl,
  });
}