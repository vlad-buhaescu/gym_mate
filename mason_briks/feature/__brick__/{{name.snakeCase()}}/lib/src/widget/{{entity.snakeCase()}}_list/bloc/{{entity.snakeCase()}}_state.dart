import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:{{name.snakeCase()}}/src/domain/model/{{entity.snakeCase()}}.dart';

part '{{entity.snakeCase()}}_state.freezed.dart';

@freezed
class {{entity.pascalCase()}}State with _${{entity.pascalCase()}}State {
  const factory {{entity.pascalCase()}}State({
    @Default(<{{entity.pascalCase()}}>[])
        List<{{entity.pascalCase()}}> {{entityPlural.camelCase()}},
  }) = _{{entity.pascalCase()}}State;
}

