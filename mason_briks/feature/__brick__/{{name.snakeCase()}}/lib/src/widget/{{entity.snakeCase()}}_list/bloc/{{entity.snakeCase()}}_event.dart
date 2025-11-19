import 'package:{{name.snakeCase()}}/src/domain/model/{{entity.snakeCase()}}.dart';

sealed class {{entity.pascalCase()}}Event {
  const {{entity.pascalCase()}}Event();
}

class {{entity.pascalCase()}}Started extends {{entity.pascalCase()}}Event {
  const {{entity.pascalCase()}}Started();
}

class {{entity.pascalCase()}}Selected extends {{entity.pascalCase()}}Event {
  const {{entity.pascalCase()}}Selected(this.{{entity.camelCase()}});

  final {{entity.pascalCase()}} {{entity.camelCase()}};
}

