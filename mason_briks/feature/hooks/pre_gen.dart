import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) {
  final pathInsideGhimiClient = Directory.current.uri.pathSegments.reversed
      .takeWhile((value) => value != 'ghimi')
      .toList()
      .reversed;

  final featurePath = [
    ...pathInsideGhimiClient,
  ].join('/');

  context.vars = {...context.vars, 'feature_path': featurePath};

  final nesting = pathInsideGhimiClient.map((_) => '..').join('/');
  context.vars = {...context.vars, 'nesting': nesting};
}
