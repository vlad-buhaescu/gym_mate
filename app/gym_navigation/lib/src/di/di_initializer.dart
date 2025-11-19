import 'package:get_it/get_it.dart';
import 'package:gym_navigation/src/feature/test_feat.dart';
import 'package:test_feat/test_feat.dart';

void initialize() {
  GetIt.I.registerFactory<TestFeatNavigator>(
    () => TestFeatNavigationImpl(),
  );
}