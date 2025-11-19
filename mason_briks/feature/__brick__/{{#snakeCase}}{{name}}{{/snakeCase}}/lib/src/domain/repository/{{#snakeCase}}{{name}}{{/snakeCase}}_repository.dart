import 'package:injectable/injectable.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/domain/api/{{#snakeCase}}{{name}}{{/snakeCase}}_api.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/domain/model/{{#snakeCase}}{{name}}{{/snakeCase}}_domain_model.dart';
import 'package:prelude/prelude.dart';

@injectable
class {{#pascalCase}}{{name}}{{/pascalCase}}Repository {
  const {{#pascalCase}}{{name}}{{/pascalCase}}Repository(this._api);

  final {{#pascalCase}}{{name}}{{/pascalCase}}Api _api;

  Future<Result<{{#pascalCase}}{{name}}{{/pascalCase}}DomainModel, Exception>> stub() async {
    final result = await Result.fromAsync(_api.stubGet1);
    return result.map((s) => s);
  }
}
