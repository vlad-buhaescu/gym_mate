part of 'test_feat_bloc.dart';

@Freezed(copyWith: false, equal: false)
class TestFeatEvent with _$TestFeatEvent {
  const factory TestFeatEvent.load() = _LoadTestFeatEvent;
}
