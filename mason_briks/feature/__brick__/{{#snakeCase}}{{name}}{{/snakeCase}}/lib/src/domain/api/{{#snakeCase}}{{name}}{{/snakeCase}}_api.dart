import 'package:api_client/api_client.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/domain/api/model/{{#snakeCase}}{{name}}{{/snakeCase}}_api_request.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/domain/model/{{#snakeCase}}{{name}}{{/snakeCase}}_domain_model.dart';

part '{{#snakeCase}}{{name}}{{/snakeCase}}_api.g.dart';

@injectable
@RestApi()
abstract class {{#pascalCase}}{{name}}{{/pascalCase}}Api {
  @factoryMethod
  factory {{#pascalCase}}{{name}}{{/pascalCase}}Api(Dio dio) = _{{#pascalCase}}{{name}}{{/pascalCase}}Api;

  @GET('/v1/stub')
  Future<{{#pascalCase}}{{name}}{{/pascalCase}}DomainModel> stubGet1();

  @GET('/v3/stub')
  Future<Response<{{#pascalCase}}{{name}}{{/pascalCase}}DomainModel>> stubGet3();

  @POST('/v3/stub')
  Future<Response<{{#pascalCase}}{{name}}{{/pascalCase}}DomainModel>> stubPost(@Body() {{#pascalCase}}{{name}}{{/pascalCase}}ApiRequest body);
}
