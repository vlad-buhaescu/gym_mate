import 'package:flutter/widgets.dart';
import 'package:i18n/i18n.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/presentation/localization/translations/{{#camelCase}}{{name}}{{/camelCase}}Translations.i69n.dart';

extension BuildContextX on BuildContext {
  {{#pascalCase}}{{name}}{{/pascalCase}}Translations get {{#camelCase}}{{name}}{{/camelCase}}Translations => translations<{{#pascalCase}}{{name}}{{/pascalCase}}Translations>();
}
