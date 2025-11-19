import 'package:freezed_annotation/freezed_annotation.dart';

part '{{entity.snakeCase()}}.freezed.dart';

@freezed
class {{entity.pascalCase()}} with _${{entity.pascalCase()}} {
  const factory {{entity.pascalCase()}}({
    required String name,
    required String biography,
  }) = _{{entity.pascalCase()}};
}

