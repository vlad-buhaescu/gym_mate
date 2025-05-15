import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/{{name.snakeCase()}}_bloc.dart';
import 'bloc/{{name.snakeCase()}}_event.dart';
import 'bloc/{{name.snakeCase()}}_state.dart';

class {{name.pascalCase()}}Page extends StatelessWidget {
  const {{name.pascalCase()}}Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => {{name.pascalCase()}}Bloc()..add({{name.pascalCase()}}Started()),
      child: Scaffold(
        appBar: AppBar(title: const Text('{{name.titleCase()}} Page')),
        body: BlocBuilder<{{name.pascalCase()}}Bloc, {{name.pascalCase()}}State>(
          builder: (context, state) {
            return const Center(child: Text('TODO: UI here'));
          },
        ),
      ),
    );
  }
}