import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/src/di/di_initializer.dart';
import 'package:{{name.snakeCase()}}/src/flow/{{name.snakeCase()}}_state.dart';
import 'package:{{name.snakeCase()}}/src/widget/{{entity.snakeCase()}}_list/{{entity.snakeCase()}}_page.dart';
import 'package:{{name.snakeCase()}}/src/widget/{{entity.snakeCase()}}_list/localization/{{entity.snakeCase()}}_localizations.dart';

class {{name.pascalCase()}}Flow extends StatefulWidget {
  const {{name.pascalCase()}}Flow({super.key});

  @override
  State<{{name.pascalCase()}}Flow> createState() => _{{name.pascalCase()}}FlowState();
}

class _{{name.pascalCase()}}FlowState extends State<{{name.pascalCase()}}Flow> {
  @override
  void initState() {
    super.initState();
    initialize();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Localizations.override(
        context: context,
        delegates: const [{{entity.pascalCase()}}Localizations.delegate],
        child: FlowBuilder<{{name.pascalCase()}}State>(
          state: const {{name.pascalCase()}}State(),
          onGeneratePages: (state, pages) => const [
            MaterialPage(child: {{entity.pascalCase()}}Page()),
          ],
        ),
      );
}

