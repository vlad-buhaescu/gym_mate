import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/src/domain/model/{{entity.snakeCase()}}.dart';

class {{entity.pascalCase()}}DetailsPage extends StatelessWidget {
  const {{entity.pascalCase()}}DetailsPage({
    super.key,
    required this.{{entity.camelCase()}},
  });

  final {{entity.pascalCase()}} {{entity.camelCase()}};

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text({{entity.camelCase()}}.name)),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Text({{entity.camelCase()}}.biography),
        ),
      );
}

