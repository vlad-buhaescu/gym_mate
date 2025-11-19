# {{#titleCase}}{{name}}{{/titleCase}}

## Additional initialization

None.

## Standard initialization

To use this package in the app:

- Add the package as the dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  {{#snakeCase}}{{name}}{{/snakeCase}}:
    path: {{{feature_path}}}{{#snakeCase}}{{name}}{{/snakeCase}}
```

- Add DI initialization:

```dart
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/{{#snakeCase}}{{name}}{{/snakeCase}}.dart';
...
const {{#pascalCase}}{{name}}{{/pascalCase}}DIInitializer(),
```

- Implement the Navigator and register it in the DI container:

```dart
import 'package:injectable/injectable.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/{{#snakeCase}}{{name}}{{/snakeCase}}.dart';

@Injectable(as: {{#pascalCase}}{{name}}{{/pascalCase}}Navigator)
class GhimiClient{{#pascalCase}}{{name}}{{/pascalCase}}Navigator implements {{#pascalCase}}{{name}}{{/pascalCase}}Navigator {}
```

- Add localization initialization:

```dart
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/{{#snakeCase}}{{name}}{{/snakeCase}}.dart';
...
{{#pascalCase}}{{name}}{{/pascalCase}}LocalizationsDelegate(),
```

- Implement the Configurator and register it in the DI container:

```dart
import 'package:injectable/injectable.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/{{#snakeCase}}{{name}}{{/snakeCase}}.dart';

@Injectable(as: {{#pascalCase}}{{name}}{{/pascalCase}}Configurator)
class GhimiClient{{#pascalCase}}{{name}}{{/pascalCase}}Configurator implements {{#pascalCase}}{{name}}{{/pascalCase}}Configurator {}
```
