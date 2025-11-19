import 'package:get_it/get_it.dart';
import 'package:{{name.snakeCase()}}/src/domain/repository/{{name.snakeCase()}}_repository.dart';
import 'package:{{name.snakeCase()}}/src/widget/{{entity.snakeCase()}}_list/bloc/{{entity.snakeCase()}}_bloc.dart';

const _initializedMark = '{{name.camelCase()}}_initialized';

void initialize() {
  final isInitialized =
      GetIt.I.isRegistered<bool>(instanceName: _initializedMark);

  if (!isInitialized) {
    GetIt.I.registerSingleton<bool>(true, instanceName: _initializedMark);
    GetIt.I.registerFactory(() => {{name.pascalCase()}}Repository());
    GetIt.I.registerFactory(() => {{entity.pascalCase()}}Bloc(GetIt.I()));
  }
}

