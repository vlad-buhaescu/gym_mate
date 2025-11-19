import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ghimi_di/ghimi_di.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/presentation/bloc/{{#snakeCase}}{{name}}{{/snakeCase}}_bloc.dart';

class {{#pascalCase}}{{name}}{{/pascalCase}}Page extends StatelessWidget {
  const {{#pascalCase}}{{name}}{{/pascalCase}}Page({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => diContainer<{{#pascalCase}}{{name}}{{/pascalCase}}Bloc>(),
        child: const Scaffold(
          body: SizedBox(),
        ),
      );
}
