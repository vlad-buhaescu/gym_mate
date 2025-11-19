import 'package:{{name.snakeCase()}}/src/domain/model/{{entity.snakeCase()}}.dart';
import 'package:injectable/injectable.dart';

@injectable
class {{name.pascalCase()}}Repository {
  List<{{entity.pascalCase()}}> get{{entityPlural.pascalCase()}}() =>
      _{{entityPlural.camelCase()}};

  {{entity.pascalCase()}} get{{entity.pascalCase()}}(String name) {
    return {{entity.pascalCase()}}(
      name: name,
      biography: '$name is one of the {{name.titleCase()}} {{entityPlural}}.',
    );
  }

  final List<{{entity.pascalCase()}}> _{{entityPlural.camelCase()}} = const [
    {{entity.pascalCase()}}(
      name: '{{entity.titleCase()}} Alpha',
      biography:
          '{{entity.titleCase()}} Alpha is a placeholder description for your new feature.',
    ),
    {{entity.pascalCase()}}(
      name: '{{entity.titleCase()}} Beta',
      biography:
          '{{entity.titleCase()}} Beta demonstrates how to extend the repository data.',
    ),
    {{entity.pascalCase()}}(
      name: '{{entity.titleCase()}} Gamma',
      biography:
          '{{entity.titleCase()}} Gamma can be replaced with domain-specific content.',
    ),
  ];
}

