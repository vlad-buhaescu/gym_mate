import 'package:i18n/i18n.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/presentation/localization/translations/{{#camelCase}}{{name}}{{/camelCase}}Translations.i69n.dart';

class {{#pascalCase}}{{name}}{{/pascalCase}}LocalizationsDelegate
    extends GhimiLocalizationsDelegate<{{#pascalCase}}{{name}}{{/pascalCase}}Translations> {
  {{#pascalCase}}{{name}}{{/pascalCase}}LocalizationsDelegate()
      : super(
          FeatureTranslationsCollection<{{#pascalCase}}{{name}}{{/pascalCase}}Translations>(
            (supportedLocale) => supportedLocale.map(
              en: (_) => () => const {{#pascalCase}}{{name}}{{/pascalCase}}Translations(),
            ),
          ),
        );
}
