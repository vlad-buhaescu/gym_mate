import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:{{name.snakeCase()}}/src/flow/{{name.snakeCase()}}_state.dart';
import 'package:{{name.snakeCase()}}/src/widget/{{entity.snakeCase()}}_list/bloc/{{entity.snakeCase()}}_cubit.dart';
import 'package:{{name.snakeCase()}}/src/widget/{{entity.snakeCase()}}_list/bloc/{{entity.snakeCase()}}_state.dart';
import 'package:{{name.snakeCase()}}/src/widget/{{entity.snakeCase()}}_list/localization/{{entity.snakeCase()}}_localizations.dart';

class {{entity.pascalCase()}}ListPage extends StatelessWidget {
  const {{entity.pascalCase()}}ListPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading:
              BackButton(onPressed: () => context.flow<{{name.pascalCase()}}State>().complete()),
          title: Text({{entity.pascalCase()}}Localizations.of(context).prompt),
        ),
        body: BlocProvider(
          create: (_) => GetIt.I.get<{{entity.pascalCase()}}Cubit>(),
          child: BlocBuilder<{{entity.pascalCase()}}Cubit, {{entity.pascalCase()}}State>(
            builder: (context, state) => ListView.builder(
              itemBuilder: (context, index) => ListTile(
                title: Text(state.{{entityPlural.camelCase()}}[index].name),
                onTap: () {},
              ),
              itemCount: state.{{entityPlural.camelCase()}}.length,
            ),
          ),
        ),
      );
}

