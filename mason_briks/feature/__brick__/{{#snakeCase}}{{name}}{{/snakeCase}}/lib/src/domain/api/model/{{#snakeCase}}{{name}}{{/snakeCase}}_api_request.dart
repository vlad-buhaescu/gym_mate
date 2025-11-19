import 'package:freezed_annotation/freezed_annotation.dart';

part '{{#snakeCase}}{{name}}{{/snakeCase}}_api_request.freezed.dart';
part '{{#snakeCase}}{{name}}{{/snakeCase}}_api_request.g.dart';

@freezed
class {{#pascalCase}}{{name}}{{/pascalCase}}ApiRequest with _${{#pascalCase}}{{name}}{{/pascalCase}}ApiRequest {
  const factory {{#pascalCase}}{{name}}{{/pascalCase}}ApiRequest({
    required String param,
  }) = _{{#pascalCase}}{{name}}{{/pascalCase}}ApiRequest;

  factory {{#pascalCase}}{{name}}{{/pascalCase}}ApiRequest.fromJson(Map<String, dynamic> json) => _${{#pascalCase}}{{name}}{{/pascalCase}}ApiRequestFromJson(json);
}
