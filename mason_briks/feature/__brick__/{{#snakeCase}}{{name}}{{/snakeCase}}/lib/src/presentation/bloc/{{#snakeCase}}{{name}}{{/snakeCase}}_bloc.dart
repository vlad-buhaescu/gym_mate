import 'package:bloc/bloc.dart';
import 'package:feature_flow/feature_flow.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/flow/{{#snakeCase}}{{name}}{{/snakeCase}}_flow_state.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/navigator/{{#snakeCase}}{{name}}{{/snakeCase}}_navigator.dart';
{{#hasDomain}}
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/domain/repository/{{#snakeCase}}{{name}}{{/snakeCase}}_repository.dart';
{{/hasDomain}}
part '{{#snakeCase}}{{name}}{{/snakeCase}}_bloc.freezed.dart';
part '{{#snakeCase}}{{name}}{{/snakeCase}}_event.dart';
part '{{#snakeCase}}{{name}}{{/snakeCase}}_state.dart';

@injectable
class {{#pascalCase}}{{name}}{{/pascalCase}}Bloc extends Bloc<{{#pascalCase}}{{name}}{{/pascalCase}}Event, {{#pascalCase}}{{name}}{{/pascalCase}}State> {
  {{#pascalCase}}{{name}}{{/pascalCase}}Bloc(
    this._navigator,
    this._flow, 
    {{#hasDomain}} this._repository,{{/hasDomain}}
  ) : super(const {{#pascalCase}}{{name}}{{/pascalCase}}State.initial()) {
    on<{{#pascalCase}}{{name}}{{/pascalCase}}Event>(
      (event, emit) => event.map(
        load: (e) => _onLoad(emit, e),
      ),
    );

    add(const {{#pascalCase}}{{name}}{{/pascalCase}}Event.load());
  }

  final {{#pascalCase}}{{name}}{{/pascalCase}}Navigator _navigator;
  final FeatureFlowController<{{#pascalCase}}{{name}}{{/pascalCase}}FlowState> _flow; {{#hasDomain}}
  final {{#pascalCase}}{{name}}{{/pascalCase}}Repository _repository; {{/hasDomain}}

  void _onLoad(Emitter<{{#pascalCase}}{{name}}{{/pascalCase}}State> emit, _Load{{#pascalCase}}{{name}}{{/pascalCase}}Event event) {}
}
