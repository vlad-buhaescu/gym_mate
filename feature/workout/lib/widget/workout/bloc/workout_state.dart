sealed class WorkoutState {}

class WorkoutInitial extends WorkoutState {}

class WorkoutLoading extends WorkoutState {}

class WorkoutLoaded extends WorkoutState {}

class WorkoutStarted extends WorkoutState {}