import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_feat_flow_state.freezed.dart';

@freezed
class TestFeatFlowState with _$TestFeatFlowState {
  const factory TestFeatFlowState.initial() = _InitialTestFeatFlowState;
}
