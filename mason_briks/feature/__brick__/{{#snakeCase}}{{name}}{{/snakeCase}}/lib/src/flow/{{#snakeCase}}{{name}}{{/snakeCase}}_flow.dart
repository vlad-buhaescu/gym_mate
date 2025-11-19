import 'package:feature_flow/feature_flow.dart';
import 'package:flutter/material.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/flow/{{#snakeCase}}{{name}}{{/snakeCase}}_flow_state.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/presentation/{{#snakeCase}}{{name}}{{/snakeCase}}_page.dart';

class {{#pascalCase}}{{name}}{{/pascalCase}}Flow extends StatelessWidget {
  const {{#pascalCase}}{{name}}{{/pascalCase}}Flow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => FeatureFlowBuilder<{{#pascalCase}}{{name}}{{/pascalCase}}FlowState>(
        state: const {{#pascalCase}}{{name}}{{/pascalCase}}FlowState.initial(),
        onGeneratePages: _onGeneratePages,
        initializer: const {{#pascalCase}}{{name}}{{/pascalCase}}DIInitializer(),
      );
}

List<Page> _onGeneratePages({{#pascalCase}}{{name}}{{/pascalCase}}FlowState state, List<Page> pages) => state.map(
      initial: (state) => [
        const MaterialPage<void>(child: {{#pascalCase}}{{name}}{{/pascalCase}}Page()),
      ],
    );
