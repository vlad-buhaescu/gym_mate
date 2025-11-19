import 'package:bdd_steps/utils/init_flow.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/di/di_initializer.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/{{#snakeCase}}{{name}}{{/snakeCase}}.dart';

Future<void> theFlowIsRunning(WidgetTester tester) => initFlow(
      tester,
      () => const {{#pascalCase}}{{name}}{{/pascalCase}}Flow(),
      const [],
      flowInitializer: const {{#pascalCase}}{{name}}{{/pascalCase}}DIInitializer(),
      localizationsDelegates: [{{#pascalCase}}{{name}}{{/pascalCase}}LocalizationsDelegate()],
    );
