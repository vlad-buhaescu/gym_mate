import 'package:freezed_annotation/freezed_annotation.dart';

part '{{#snakeCase}}{{name}}{{/snakeCase}}_domain_model.freezed.dart';
part '{{#snakeCase}}{{name}}{{/snakeCase}}_domain_model.g.dart';

@freezed
class {{#pascalCase}}{{name}}{{/pascalCase}}DomainModel with _${{#pascalCase}}{{name}}{{/pascalCase}}DomainModel {
  const factory {{#pascalCase}}{{name}}{{/pascalCase}}DomainModel() = _{{#pascalCase}}{{name}}{{/pascalCase}}DomainModel;

  factory {{#pascalCase}}{{name}}{{/pascalCase}}DomainModel.fromJson(Map<String, dynamic> json) => _${{#pascalCase}}{{name}}{{/pascalCase}}DomainModelFromJson(json);
}
