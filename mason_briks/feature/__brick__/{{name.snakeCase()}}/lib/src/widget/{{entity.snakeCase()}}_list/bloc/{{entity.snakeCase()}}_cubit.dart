import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:{{name.snakeCase()}}/src/domain/repository/{{name.snakeCase()}}_repository.dart';
import 'package:{{name.snakeCase()}}/src/widget/{{entity.snakeCase()}}_list/bloc/{{entity.snakeCase()}}_state.dart';

@injectable
class {{entity.pascalCase()}}Cubit extends Cubit<{{entity.pascalCase()}}State> {
  {{entity.pascalCase()}}Cubit({{name.pascalCase()}}Repository repository)
      : super({{entity.pascalCase()}}State(
          {{entityPlural.camelCase()}}: repository.get{{entityPlural.pascalCase()}}(),
        ));
}

