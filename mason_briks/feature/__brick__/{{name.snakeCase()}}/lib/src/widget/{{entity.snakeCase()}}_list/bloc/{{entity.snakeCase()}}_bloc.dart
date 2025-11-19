import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:{{name.snakeCase()}}/src/domain/repository/{{name.snakeCase()}}_repository.dart';
import 'package:{{name.snakeCase()}}/src/widget/{{entity.snakeCase()}}_list/bloc/{{entity.snakeCase()}}_event.dart';
import 'package:{{name.snakeCase()}}/src/widget/{{entity.snakeCase()}}_list/bloc/{{entity.snakeCase()}}_state.dart';

@injectable
class {{entity.pascalCase()}}Bloc
    extends Bloc<{{entity.pascalCase()}}Event, {{entity.pascalCase()}}State> {
  {{entity.pascalCase()}}Bloc({{name.pascalCase()}}Repository repository)
      : _repository = repository,
        super(const {{entity.pascalCase()}}State()) {
    on<{{entity.pascalCase()}}Started>(_onStarted);
    on<{{entity.pascalCase()}}Selected>(_onSelected);
  }

  final {{name.pascalCase()}}Repository _repository;

  void _onStarted(
    {{entity.pascalCase()}}Started event,
    Emitter<{{entity.pascalCase()}}State> emit,
  ) {
    emit(state.copyWith(isLoading: true));
    final items = _repository.get{{entityPlural.pascalCase()}}();
    emit(
      state.copyWith(
        isLoading: false,
        {{entityPlural.camelCase()}}: items,
      ),
    );
  }

  void _onSelected(
    {{entity.pascalCase()}}Selected event,
    Emitter<{{entity.pascalCase()}}State> emit,
  ) {
    emit(
      state.copyWith(
        selected{{entity.pascalCase()}}: event.{{entity.camelCase()}},
      ),
    );
  }
}

