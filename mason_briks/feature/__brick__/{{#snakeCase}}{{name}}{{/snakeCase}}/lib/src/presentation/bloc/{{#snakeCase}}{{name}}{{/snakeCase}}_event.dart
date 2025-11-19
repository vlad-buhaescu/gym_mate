part of '{{#snakeCase}}{{name}}{{/snakeCase}}_bloc.dart';

@Freezed(copyWith: false, equal: false)
class {{#pascalCase}}{{name}}{{/pascalCase}}Event with _${{#pascalCase}}{{name}}{{/pascalCase}}Event {
  const factory {{#pascalCase}}{{name}}{{/pascalCase}}Event.load() = _Load{{#pascalCase}}{{name}}{{/pascalCase}}Event;
}
