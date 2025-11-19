part of '{{#snakeCase}}{{name}}{{/snakeCase}}_bloc.dart';

@freezed
class {{#pascalCase}}{{name}}{{/pascalCase}}State with _${{#pascalCase}}{{name}}{{/pascalCase}}State {
  const factory {{#pascalCase}}{{name}}{{/pascalCase}}State.initial() = _Initial{{#pascalCase}}{{name}}{{/pascalCase}}State;
}
