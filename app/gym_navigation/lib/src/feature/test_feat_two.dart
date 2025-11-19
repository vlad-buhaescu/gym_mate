import 'package:gym_navigation/src/gym_navigation.dart';
import 'package:test_feat_two/test_feat_two.dart';

class TestFeatTwoImpl implements TestFeatTwoNavigator {
  @override
  void openSet(String id) {
    router.push('/universe/$id');
  }
}
