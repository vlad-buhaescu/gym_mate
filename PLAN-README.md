# 🏋️‍♂️ Gym Tracker (Flutter + Melos) --- Architecture Plan

A modular **LEGO-style** Flutter architecture using **melos** for
package management.\
This is designed to help you stay focused, avoid over-engineering, and
ship an MVP fast.

## 1. 🎯 MVP Scope (build only this first)

-   Create a workout\
-   Add exercises to the workout\
-   Add sets with **reps + weight**\
-   View today's workout\
-   View a simple history list

**Out of scope for V1:** authentication, timers, graphs, cloud sync, PR
tracking.

## 2. 📦 Monorepo Structure (melos)

    .
    ├─ melos.yaml
    ├─ pubspec.yaml
    └─ packages
       ├─ app                # Main Flutter app
       ├─ core_ui            # Shared widgets & theme
       ├─ core_domain        # Entities & use cases
       ├─ core_data          # DB, repositories
       ├─ feature_workout    # Workout flow (MVP feature)
       └─ feature_exercise   # Optional later

## 3. 🧰 Melos Setup

**melos.yaml:**

``` yaml
name: gym_tracker
packages:
  - "packages/*"

scripts:
  analyze: "flutter analyze"
  test: "flutter test"
  format: "dart format ."
```

**Root pubspec.yaml:**

``` yaml
name: gym_tracker_root
environment:
  sdk: ">=3.4.0 <4.0.0"

dev_dependencies:
  melos: any
```

Run:

``` bash
melos bootstrap
```

## 4. 🧱 Core Domain (minimal, clean)

``` dart
class WorkoutId {
  final String value;
  const WorkoutId(this.value);
}

class ExerciseId {
  final String value;
  const ExerciseId(this.value);
}

class Workout {
  final WorkoutId id;
  final DateTime date;
  final List<WorkoutExercise> exercises;

  const Workout({
    required this.id,
    required this.date,
    required this.exercises,
  });
}

class WorkoutExercise {
  final ExerciseId id;
  final String name;
  final List<WorkoutSet> sets;

  const WorkoutExercise({
    required this.id,
    required this.name,
    required this.sets,
  });
}

class WorkoutSet {
  final int reps;
  final double weight;

  const WorkoutSet({
    required this.reps,
    required this.weight,
  });
}
```

## 5. 💾 Core Data Layer

``` dart
abstract class WorkoutRepository {
  Future<void> saveWorkout(Workout workout);
  Stream<List<Workout>> watchWorkouts();
}
```

## 6. 🎨 Core UI (shared LEGO pieces)

Reusable widgets & theming.

## 7. 🧩 Feature: Workout (first real slice)

    presentation/
      workout_home_page.dart
      workout_detail_page.dart
      widgets/

    application/
      workout_cubit.dart

    infrastructure/

## 8. 🏁 The App Layer (wrapper only)

``` dart
class GymApp extends StatelessWidget {
  const GymApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gym Tracker',
      theme: appTheme,
      home: const WorkoutHomePage(),
    );
  }
}
```

## 9. 🚦 Implementation Phases

### Phase 1 --- In-memory MVP

### Phase 2 --- Persistence

### Phase 3 --- Refine LEGO pieces

## 10. 🧭 Rules to Avoid Getting Lost

1.  No new package unless reused\
2.  Build vertical slices\
3.  Minimal melos scripts\
4.  Design screens first
