import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/src/widget/{{entity.snakeCase()}}_list/localization/translations/{{entity.snakeCase()}}.i69n.dart';

final _translations = <String, {{entity.pascalCase()}} Function()>{
  'en': () => const {{entity.pascalCase()}}(),
};

class {{entity.pascalCase()}}Localizations {
  const {{entity.pascalCase()}}Localizations(this.translations);

  final {{entity.pascalCase()}} translations;

  static const LocalizationsDelegate<{{entity.pascalCase()}}Localizations> delegate =
      _{{entity.pascalCase()}}LocalizationsDelegate();

  static final List<Locale> supportedLocales =
      _translations.keys.map(Locale.new).toList();

  static Future<{{entity.pascalCase()}}Localizations> load(Locale locale) =>
      Future.value(
        {{entity.pascalCase()}}Localizations(_translations[locale.languageCode]!()),
      );

  static {{entity.pascalCase()}} of(BuildContext context) =>
      Localizations.of<{{entity.pascalCase()}}Localizations>(
        context,
        {{entity.pascalCase()}}Localizations,
      )!
          .translations;
}

class _{{entity.pascalCase()}}LocalizationsDelegate
    extends LocalizationsDelegate<{{entity.pascalCase()}}Localizations> {
  const _{{entity.pascalCase()}}LocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      _translations.keys.contains(locale.languageCode);

  @override
  Future<{{entity.pascalCase()}}Localizations> load(Locale locale) =>
      {{entity.pascalCase()}}Localizations.load(locale);

  @override
  bool shouldReload(
          covariant LocalizationsDelegate<{{entity.pascalCase()}}Localizations> old) =>
      false;
}

