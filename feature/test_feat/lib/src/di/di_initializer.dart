import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:test_feat/src/di/di_initializer.config.dart';


class TestFeatDIInitializer extends GhimiDIInitializer {
  const TestFeatDIInitializer() : super(_init);
}

@injectableInit
FutureOr<GetIt> _init(GetIt getIt, String? environment) =>
    getIt.init(environment: environment);


typedef GetItInitializer = FutureOr<void> Function(
  GetIt getIt,
  String? environment,
);

class GhimiDIInitializer {
  const GhimiDIInitializer(this._initializer);

  final GetItInitializer _initializer;

  FutureOr<void> init(GetIt getIt) => _initializer(getIt, null);
}
