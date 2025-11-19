import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:{{name.snakeCase()}}/src/domain/model/{{entity.snakeCase()}}.dart';

part '{{name.snakeCase()}}_state.freezed.dart';

@freezed
class {{name.pascalCase()}}State with _${{name.pascalCase()}}State {
  const factory {{name.pascalCase()}}State({
    {{entity.pascalCase()}}? selected{{entity.pascalCase()}},
  }) = _{{name.pascalCase()}}State;
}

