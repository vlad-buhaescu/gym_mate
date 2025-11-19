import 'package:gym_navigation/src/gym_navigation.dart';
import 'package:test_feat/test_feat.dart';

class TestFeatNavigationImpl implements TestFeatNavigator {
  @override
  void openUniverse(String id) {
    router.push('/universe/$id');
  }
}
